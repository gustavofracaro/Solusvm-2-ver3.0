<?php
// Copyright 1999-2024. WebPros International GmbH. All rights reserved.

if (!defined('WHMCS')) {
    die('This file cannot be accessed directly');
}

$_LANG['solusvm2vps_config_option_plan'] = 'Plan';
$_LANG['solusvm2vps_config_option_operating_system'] = 'Sistema operativo';
$_LANG['solusvm2vps_config_option_application'] = 'Aplicación';
$_LANG['solusvm2vps_config_option_default_operating_system'] = 'Sistema operativo predeterminado';
$_LANG['solusvm2vps_config_option_application'] = 'Aplicación';
$_LANG['solusvm2vps_config_option_default_location'] = 'Ubicación predeterminada';
$_LANG['solusvm2vps_config_option_backup_enabled'] = 'Activar backups';
$_LANG['solusvm2vps_config_option_snapshot_enabled'] = 'Activar instantáneas';
$_LANG['solusvm2vps_config_option_user_data'] = 'Datos de usuario';
$_LANG['solusvm2vps_config_option_none'] = '(Ninguno/a)';
$_LANG['solusvm2vps_config_option_default_role'] = 'Rol predeterminado';
$_LANG['solusvm2vps_config_option_default_limit_group'] = 'Grupo del límite predeterminado';
$_LANG['solusvm2vps_config_option_additional_disk_offer'] = 'Oferta de disco adicional';
$_LANG['solusvm2vps_config_option_360monitoring_enabled'] = 'Integración con 360 Monitoring';

$_LANG['solusvm2vps_button_restart'] = 'Reiniciar';
$_LANG['solusvm2vps_button_sync'] = 'Sincronizar cuenta';
$_LANG['solusvm2vps_button_vnc'] = 'Acceso VNC';
$_LANG['solusvm2vps_button_reinstall'] = 'Reinstalar';
$_LANG['solusvm2vps_button_cancel'] = 'Cancelar';
$_LANG['solusvm2vps_button_close'] = 'Cerrar';
$_LANG['solusvm2vps_button_start'] = 'Iniciar';
$_LANG['solusvm2vps_button_stop'] = 'Detener';
$_LANG['solusvm2vps_button_power_off'] = 'Apagar';
$_LANG['solusvm2vps_button_reset_pw'] = 'Restablecer la contraseña root';
$_LANG['solusvm2vps_button_change_hostname'] = 'Cambiar nombre de host';
$_LANG['solusvm2vps_button_rescue_mode'] = 'Rescatar';
$_LANG['solusvm2vps_button_create_backup'] = 'Crear backup';
$_LANG['solusvm2vps_button_restore_backup'] = 'Restaurar';
$_LANG['solusvm2vps_button_create_snapshot'] = 'Crear instantánea';
$_LANG['solusvm2vps_button_revert_snapshot'] = 'Revertir';
$_LANG['solusvm2vps_button_login'] = 'Iniciar sesión en el panel cloud';

$_LANG['solusvm2vps_confirm_reinstall'] = '¿Reinstalar el servidor?';
$_LANG['solusvm2vps_password_reset_success'] = 'Se ha restablecido la contraseña root. Busque en su buzón de correo el email con la nueva contraseña de servidor.';
$_LANG['solusvm2vps_password_reset_success_with_password'] = 'Se ha restablecido la contraseña root. La nueva contraseña: ';
$_LANG['solusvm2vps_password_reset_success_copy_password'] = 'Copiar contraseña al portapapeles';
$_LANG['solusvm2vps_new_hostname'] = 'Cambiar nombre de host a:';
$_LANG['solusvm2vps_confirm_change_hostname'] = 'Para cambiar el nombre de host, es necesario reiniciar la máquina. ¿Continuar?';
$_LANG['solusvm2vps_hostname_changed'] = 'Se ha cambiado el nombre de host';
$_LANG['solusvm2vps_reinstall_integration_enable_360monitoring'] = 'Activar integración con 360 Monitoring';

$_LANG['solusvm2vps_error_server_already_created'] = 'El servidor con este ID ya existe en SolusVM 2.';
$_LANG['solusvm2vps_error_server_not_found'] = 'No se ha encontrado el servidor.';
$_LANG['solusvm2vps_error_change_hostname'] = 'No ha sido posible cambiar el nombre de host';
$_LANG['solusvm2vps_error_user_not_found'] = 'No se ha encontrado ningún usuario con dicho email en SolusVM 2.0';

$_LANG['solusvm2vps_rescue_mode_summary'] = 'Arrancar desde la ISO de rescate le ayuda a corregir errores de coincidencia de kernel y sistemas de archivos dañados.';
$_LANG['solusvm2vps_rescue_mode_description'] = 'Un servidor se arranca desde su disco de forma predeterminada. Si el servidor se arrancó desde la ISO de rescate y desea arrancarlo de nuevo desde el disco, haga lo siguiente:

1. Apague o reinicie el servidor. Para apagarlo, haga clic en el botón Detener arriba o utilice la línea de comandos.

2. Encienda su servidor haciendo clic en el botón Inciar arriba o arránquelo desde su disco.';

$_LANG['solusvm2vps_exception_page_default_title'] = 'Vaya, ha sucedido algo inesperado.';
$_LANG['solusvm2vps_exception_page_default_message'] = 'Vuelva atrás e inténtelo de nuevo. Si el problema persiste, contacte con el equipo de soporte técnico.';
$_LANG['solusvm2vps_exception_page_pending_title'] = 'Se está aprovisionando el servicio';
$_LANG['solusvm2vps_exception_page_pending_message'] = 'Se está aprovisionando el servicio. Si tiene alguna pregunta, contacte con el equipo de soporte técnico.';
$_LANG['solusvm2vps_exception_page_cancelled_title'] = 'El servicio ha sido terminado';
$_LANG['solusvm2vps_exception_page_cancelled_message'] = 'Este servicio ya había sido terminado. Si tiene alguna pregunta, contacte con el equipo de soporte técnico.';

$_LANG['solusvm2vps_chart_interval_1h'] = 'Última hora';
$_LANG['solusvm2vps_chart_interval_6h'] = 'Últimas 6 horas';
$_LANG['solusvm2vps_chart_interval_24h'] = 'Últimas 24 horas';

$_LANG['solusvm2vps_chart_integration_poweredby'] = 'Con tecnología de';
$_LANG['solusvm2vps_chart_integration_360monitoring'] = '360 Monitoring';

$_LANG['solusvm2vps_chart_cpu_title'] = 'Uso de la CPU';
$_LANG['solusvm2vps_chart_cpu_label_load'] = 'Promedio de carga (%)';

$_LANG['solusvm2vps_chart_load_title'] = 'Promedio de carga';
$_LANG['solusvm2vps_chart_load1_label_read'] = '1 min';
$_LANG['solusvm2vps_chart_load5_label_read'] = '5 min';
$_LANG['solusvm2vps_chart_load15_label_read'] = '15 min';

$_LANG['solusvm2vps_chart_network_title'] = 'Uso de red';
$_LANG['solusvm2vps_chart_network_label_read'] = 'KiB de lectura';
$_LANG['solusvm2vps_chart_network_label_write'] = 'KiB de escritura';

$_LANG['solusvm2vps_chart_disk_title'] = 'Uso de disco';
$_LANG['solusvm2vps_chart_disk_label_read'] = 'KiB de lectura';
$_LANG['solusvm2vps_chart_disk_label_write'] = 'KiB de escritura';

$_LANG['solusvm2vps_chart_memory_title'] = 'Uso de memoria';
$_LANG['solusvm2vps_chart_memory_label_usage'] = 'MiB de uso';

$_LANG['solusvm2vps_traffic'] = 'Tráfico total';

$_LANG['solusvm2vps_error_guest_tools_missing'] = 'Para esta acción se necesitan herramientas de invitado.';
$_LANG['solusvm2vps_service_is_suspended'] = 'Esta acción no está permitida para servicios suspendidos.';
$_LANG['solusvm2vps_service_suspended_state'] = 'Este servicio está suspendido';
$_LANG['solusvm2vps_backups_are_disabled'] = 'Los backups están desactivados para este producto';
$_LANG['solusvm2vps_snapshots_are_disabled'] = 'Las instantáneas están desactivadas para este producto';

$_LANG['solusvm2vps_monitoring360_consent'] = 'Para poder proporcionarle los productos, servicios y contenidos que solicitó o responder a sus consultas, debemos almacenar y procesar sus datos personales. Lea la <a href="https://360monitoring.com/legal/#privacy-policy" target="_blank" class="alert-link">Política de privacidad</a> para obtener más información.<br />Al activar 360 Monitoring, acepto que 360 ​​Monitoring procese mis datos personales con el fin de conservar mi cuenta mientras no sea terminada.';