<?php
// Módulo SolusVM 2 Ver - 3.0 para uso no WHMCS 8.13 em PHP 8.3
// Base reutilizada do módulo original SolusVM com melhorias
// Desenvolvido por: Cloud Atlântico - www.cloudatlantico.com.br
// Data: 12/02/2026 por Gustavo Fracaro

namespace WHMCS\Module\Server\SolusVm2Vps\Helpers;

use InvalidArgumentException;

class Unit
{
    public const KiB = 'KiB';
    public const MiB = 'MiB';
    public const GiB = 'GiB';
    public const TiB = 'TiB';
    public const PiB = 'PiB';

    private const MULTIPLIERS = [
        self::KiB => 1024,
        self::MiB => 1024*1024,
        self::GiB => 1024*1024*1024,
        self::TiB => 1024*1024*1024*1024,
        self::PiB => 1024*1024*1024*1024*1024,
    ];

    public static function convert(int $bytes, string $unit, int $decimal = 2): float
    {
        if (!array_key_exists($unit, self::MULTIPLIERS)) {
            throw new InvalidArgumentException(sprintf('Unknown unit: "%s"', $unit));
        }

        $result = $bytes / self::MULTIPLIERS[$unit];

        if ($decimal === 0) {
            return floor($result);
        }

        $k = 10**$decimal;

        return floor($result*$k)/$k;
    }
}
