<?php

namespace WHMCS\Module\Server\SolusVm2Vps\Monitoring360API;

use \GuzzleHttp\Client;
use \GuzzleHttp\ClientInterface;;
use WHMCS\Module\Server\SolusVm2Vps\Helpers\Arr;
use WHMCS\Module\Server\SolusVm2Vps\Helpers\Yaml;
use WHMCS\Module\Server\SolusVm2Vps\Logger\Logger;
use WHMCS\Module\Server\SolusVm2Vps\SolusAPI\Helpers\Strings;

class Utils360
{
    const MONITORING360_CLOUDINIT = <<<CLOUDINIT
#cloud-config
write_files:
  - path: /root/install_agent360.sh
    permissions: '0755'
    content: |
      #!/bin/bash
      agent360_started="AGENT360_INSTALLATION_STARTED"
      agent360_succeed="AGENT360_INSTALLATION_SUCCEED"
      agent360_failed="AGENT360_INSTALLATION_FAILED"
      server_id="{server_tag}"
      token="{user_token}"
      set -ex
      function amplitude_call() {
        msg=$1
        curl -X POST https://api2.amplitude.com/2/httpapi   -H 'Content-Type: application/json'   -H 'Accept: */*'   --data '{
        "api_key": "558187c6a3913877fad8855b87a84d44",
        "events": [{
          "device_id": "'\$server_id'",
          "event_type": "'\$msg'"
          }]
        }'
      }
      function error(){
        result=$?
        if [ "\$result" -ne 0 ]; then
          amplitude_call \$agent360_failed
          exit 1
        fi
      }
      function install_wget() {
        source /etc/os-release
        case \$ID in
          debian|ubuntu)
            apt update
            apt install wget -y || error
            ;;
          centos|almalinux|cloudlinux|amazon|fedora|sangoma|ol|scientific|freepbx|rhel|virtuozzo|rocky)
            yum install wget -y || error
            ;;
          freebsd)
            pkg install wget -y || error
            ;;
          *)
            echo -n "Unsupported Linux version"
            amplitude_call \$agent360_failed
            exit 1
            ;;
        esac
      }
      function main() {
        amplitude_call \$agent360_started
        install_wget
        wget -q -N app.360monitoring.com/agent360.sh && /bin/bash ./agent360.sh \${token}_\${server_id} || error
        amplitude_call \$agent360_succeed
      }
      main "$@"

runcmd:
  - /bin/bash /root/install_agent360.sh
  - rm -f /root/install_agent360.sh
CLOUDINIT;

    private const CREATE_USER_URL = 'https://solus.360monitoring.com/user/create';
    private const HELLO_URL = 'https://ingest.monitoring360.io/hello.php';
    private const API_URL = 'https://api.monitoring360.io/';

    public static function createUser(array $params): array
    {
        $client = new Client();

        $password = $params['password'] ?? Strings::generatePassword();

        $request = [
            'email' => $params['clientsdetails']['email'],
            'password' => $password,
            'consent' => true, // we acquire consent on the create server page
            'marketingConsent' => false, // todo: add marketing consent
        ];

        $response = $client->post(self::CREATE_USER_URL, [
            'json' => $request,
        ]);

        return json_decode($response->getBody()->getContents(), true);
    }

    public static function createServer(string $user_id, string $hostname): string
    {
        $client = new Client();

        $response = $client->post(self::HELLO_URL, [
            'headers' => [
                'Content-Type' => 'application/x-www-form-urlencoded'
            ],
            'form_params' => [
                'user' => $user_id,
                'hostname' => $hostname,
            ],
        ]);

        return $response->getBody()->getContents();
    }

    public static function mergeCloudInit(?string $originalUserData, string $user_id, string $server_id): string
    {
        $monitoringUserData = str_replace(
            ['{server_tag}', '{user_token}'],
            [$server_id, $user_id],
            self::MONITORING360_CLOUDINIT
        );

        $merged = !empty($originalUserData)
            ? Yaml::mergeCloudInit($originalUserData, $monitoringUserData)
            : $monitoringUserData;

        $merged = str_replace("\r\n", "\n", $merged);

        return $merged;
    }

    public static function collectUsage(
        string $serverId,
        string $apiToken,
        int $window = 60 * 60 * 24 // 24 hours
    ): ?array {
        $client = new Client([
            'base_uri' => self::API_URL,
        ]);

        $now = time();
        $from = $now - $window;

        $path = 'v1/server/' . $serverId . '/metrics?token=' . $apiToken . '&start=' . $from . '&end=' . $now;

        $usage = [
            'cpu' => [],
            'load_average' => [],
            'network' => [],
            'disk' => [],
            'memory' => [],
            'is_integration_360monitoring' => true,
        ];

        $cpuUsageResponse = $client->get($path . '&metric=cpu');
        $cpuUsageResponse = json_decode($cpuUsageResponse->getBody()->getContents(), true);

        $usage['granularity'] = Arr::get($cpuUsageResponse, 'meta.granularity');
        /** @var array<int, float> $cpuUsage */
        $cpuUsage = Arr::get($cpuUsageResponse, 'data.cpu.average.usage', []);
        foreach ($cpuUsage as $time => $point) {
            $usage['cpu'][] = [
                'second' => $time * 1000,
                'load_average' => $point,
            ];
        }

        /** @var array{"1": array<int, float>, "5": array<int, float>, "15": array<int, float>} $loadAverage */
        $loadAverage = Arr::get($cpuUsageResponse, 'data.load', []);
        foreach ($loadAverage["1"] as $index => $point) {
            $usage['load_average'][] = [
                'second' => $index * 1000,
                '1' => (int)($point * 100),
                '5' => (int)($loadAverage["5"][$index] * 100),
                '15' => (int)($loadAverage["15"][$index] * 100),
            ];
        }

        $memoryUsageResponse = $client->get($path . '&metric=mem');
        $memoryUsageResponse = json_decode($memoryUsageResponse->getBody()->getContents(), true);

        /** @var array<int, float> $memoryUsage */
        $memoryUsage = Arr::get($memoryUsageResponse, 'data.average.u', []);
        foreach ($memoryUsage as $time => $point) {
            $usage['memory'][] = [
                'second' => $time * 1000,
                'memory' => $point / 1024,
            ];
        }

        $networkUsageResponse = $client->get($path . '&metric=net');
        $networkUsageResponse = json_decode($networkUsageResponse->getBody()->getContents(), true);

        /** @var array<int, float> $networkUsage */
        $networkUsage = Arr::get($networkUsageResponse, 'data.average.rxkb', []);
        foreach ($networkUsage as $time => $point) {
            $usage['network'][] = [
                'second' => $time * 1000,
                'read_kb' => $point,
                'write_kb' => Arr::get($networkUsageResponse, 'data.average.txkb.' . $time, 0),
            ];
        }

        $diskUsageResponse = $client->get($path . '&metric=io');
        $diskUsageResponse = json_decode($diskUsageResponse->getBody()->getContents(), true);

        /** @var array<int, float> $diskUsage */
        $diskUsage = Arr::get($diskUsageResponse, 'data.average.write_sector', []);
        foreach ($diskUsage as $time => $reads) {
            $writes = Arr::get($diskUsageResponse, 'data.average.write_sector.' . $time, 0);
            $usage['disk'][] = [
                'second' => $time * 1000,
                'read_kb' => $reads / 2, // = reads * 512 / 1024, where 512 is sector size and 1024 is kb
                'write_kb' => $writes / 2,
            ];
        }

        return $usage;
    }
}