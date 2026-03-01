<?php
// Módulo SolusVM 2 Ver - 3.0 para uso no WHMCS 8.13 em PHP 8.3
// Base reutilizada do módulo original SolusVM com melhorias
// Desenvolvido por: Cloud Atlântico - www.cloudatlantico.com.br
// Data: 12/02/2026 por Gustavo Fracaro

namespace WHMCS\Module\Server\SolusVm2Vps\Helpers;

class FileMainDir
{
    public const IMPORTED_SERVERS = 'imported_servers';
    public const IMPORTED_LOCATIONS = 'imported_locations';
    public const IMPORTED_SERVERS_RESOURCES = 'imported_servers_resources';

    public static function load(string $file): array
    {
        $data = file_get_contents(dirname(__DIR__, 2) . "/$file.json");
        if (!$data) {
            throw new \Exception(sprintf("File %s was not found. Run `get-import-info` command to create necessary files.", dirname(__DIR__, 2) . "/$file.json"));
        }
        return json_decode($data, true);
    }

    public static function save(string $file, array $data): void
    {
        if (!file_put_contents(dirname(__DIR__, 2) . "/$file.json", json_encode($data))) {
            throw new \Exception(sprintf("Cannot save to file %s.", dirname(__DIR__, 2) . "/$file.json"));
        }
    }
}