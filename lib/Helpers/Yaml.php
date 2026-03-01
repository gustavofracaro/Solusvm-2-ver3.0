<?php

namespace WHMCS\Module\Server\SolusVm2Vps\Helpers;

use Symfony\Component\Yaml\Yaml as SymfonyYaml;

class Yaml
{
    public static function merge(string $yaml1, string $yaml2): string
    {
        $array1 = SymfonyYaml::parse($yaml1);
        $array2 = SymfonyYaml::parse($yaml2);

        $merged = array_merge_recursive($array1, $array2);

        return SymfonyYaml::dump($merged, 2, 2);
    }

    public static function mergeCloudInit(string $yaml1, string $yaml2): string
    {
        return '#cloud-config' . PHP_EOL . self::merge($yaml1, $yaml2);
    }
}