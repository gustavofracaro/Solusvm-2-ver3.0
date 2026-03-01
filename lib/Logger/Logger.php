<?php
// Módulo SolusVM 2 Ver - 3.0 para uso no WHMCS 8.13 em PHP 8.3
// Base reutilizada do módulo original SolusVM com melhorias
// Desenvolvido por: Cloud Atlântico - www.cloudatlantico.com.br
// Data: 12/02/2026 por Gustavo Fracaro

namespace WHMCS\Module\Server\SolusVm2Vps\Logger;

/**
 * @package WHMCS\Module\Server\SolusVm2Vps\DI
 */
final class Logger
{
    const MODULE_NAME = 'solusvm2vps';

    /**
     * @param array $data
     * @param string $message
     */
    public static function log(array $data, string $message)
    {
        logModuleCall(self::MODULE_NAME, __FUNCTION__, $data, $message);
    }
}
