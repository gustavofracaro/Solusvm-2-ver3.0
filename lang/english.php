<?php
// Copyright 1999-2024. WebPros International GmbH. All rights reserved.

if (!defined('WHMCS')) {
    die('This file cannot be accessed directly');
}

$_LANG['solusvm2vps_config_option_plan'] = 'Plan';
$_LANG['solusvm2vps_config_option_operating_system'] = 'Operating System';
$_LANG['solusvm2vps_config_option_application'] = 'Application';
$_LANG['solusvm2vps_config_option_default_operating_system'] = 'Default Operating System';
$_LANG['solusvm2vps_config_option_application'] = 'Application';
$_LANG['solusvm2vps_config_option_default_location'] = 'Default Location';
$_LANG['solusvm2vps_config_option_backup_enabled'] = 'Enable Backups';
$_LANG['solusvm2vps_config_option_snapshot_enabled'] = 'Enable Snapshots';
$_LANG['solusvm2vps_config_option_user_data'] = 'User Data';
$_LANG['solusvm2vps_config_option_none'] = '(None)';
$_LANG['solusvm2vps_config_option_default_role'] = 'Default Role';
$_LANG['solusvm2vps_config_option_default_limit_group'] = 'Default Limit Group';
$_LANG['solusvm2vps_config_option_additional_disk_offer'] = 'Additional Disk Offer';
$_LANG['solusvm2vps_config_option_360monitoring_enabled'] = 'Offer 360 Monitoring Integration';
$_LANG['solusvm2vps_config_option_disaster_recovery_enabled'] = 'Enable Disaster Recovery';

$_LANG['solusvm2vps_button_restart'] = 'Restart';
$_LANG['solusvm2vps_button_sync'] = 'Sync account';
$_LANG['solusvm2vps_button_vnc'] = 'VNC Access';
$_LANG['solusvm2vps_button_reinstall'] = 'Reinstall';
$_LANG['solusvm2vps_button_cancel'] = 'Cancel';
$_LANG['solusvm2vps_button_close'] = 'Close';
$_LANG['solusvm2vps_button_start'] = 'Start';
$_LANG['solusvm2vps_button_stop'] = 'Stop';
$_LANG['solusvm2vps_button_power_off'] = 'Power Off';
$_LANG['solusvm2vps_button_reset_pw'] = 'Reset Root Password';
$_LANG['solusvm2vps_button_change_hostname'] = 'Change Hostname';
$_LANG['solusvm2vps_button_rescue_mode'] = 'Rescue';
$_LANG['solusvm2vps_button_create_backup'] = 'Create Backup';
$_LANG['solusvm2vps_button_restore_backup'] = 'Restore';
$_LANG['solusvm2vps_button_create_snapshot'] = 'Create Snapshot';
$_LANG['solusvm2vps_button_revert_snapshot'] = 'Revert';
$_LANG['solusvm2vps_button_login'] = 'Login to cloud panel';

$_LANG['solusvm2vps_confirm_reinstall'] = 'Reinstall the server?';
$_LANG['solusvm2vps_password_reset_success'] = 'The root password has been reset. Please check your mailbox for an email with a new server password.';
$_LANG['solusvm2vps_password_reset_success_with_password'] = 'The root password has been reset. The new password: ';
$_LANG['solusvm2vps_password_reset_success_copy_password'] = 'Copy password to clipboard';
$_LANG['solusvm2vps_new_hostname'] = 'Change hostname to:';
$_LANG['solusvm2vps_confirm_change_hostname'] = 'To change the hostname, the machine needs to be rebooted. Continue?';
$_LANG['solusvm2vps_hostname_changed'] = 'The hostname has been changed';
$_LANG['solusvm2vps_reinstall_integration_enable_360monitoring'] = 'Enable 360 Monitoring Integration';

$_LANG['solusvm2vps_error_server_already_created'] = 'The server with this ID already exist in SolusVM 2.';
$_LANG['solusvm2vps_error_server_not_found'] = 'The server was not found.';
$_LANG['solusvm2vps_error_change_hostname'] = 'Failed to change the hostname';
$_LANG['solusvm2vps_error_user_not_found'] = 'User with such email not found in SolusVM 2.0';

$_LANG['solusvm2vps_rescue_mode_summary'] = 'Booting from the rescue ISO helps you fix kernel mismatches and corrupted file systems.';
$_LANG['solusvm2vps_rescue_mode_description'] = 'By default, a server is booted from its disk. If your server was booted from the rescue ISO and you want to boot the server from the disk again, do the following:

1. Shut down or reboot your server. To shut down the server, click the Stop button above or use the command line.

2. Power on your server. To do so, click the Start button above or boot the server from its disk.';

$_LANG['solusvm2vps_exception_page_default_title'] = 'Oops! Something went wrong.';
$_LANG['solusvm2vps_exception_page_default_message'] = 'Please go back and try again. If the problem persists, please contact technical support.';
$_LANG['solusvm2vps_exception_page_pending_title'] = 'The service is being provisioned';
$_LANG['solusvm2vps_exception_page_pending_message'] = 'Your service is being provisioned. If you have any questions, please contact technical support.';
$_LANG['solusvm2vps_exception_page_cancelled_title'] = 'The service was terminated';
$_LANG['solusvm2vps_exception_page_cancelled_message'] = 'This service was already terminated. If you have any questions, please contact technical support.';

$_LANG['solusvm2vps_chart_interval_1h'] = 'Last 1 hour';
$_LANG['solusvm2vps_chart_interval_6h'] = 'Last 6 hours';
$_LANG['solusvm2vps_chart_interval_24h'] = 'Last 24 hours';

$_LANG['solusvm2vps_chart_integration_poweredby'] = 'Powered by';
$_LANG['solusvm2vps_chart_integration_360monitoring'] = '360 Monitoring';

$_LANG['solusvm2vps_chart_cpu_title'] = 'CPU usage';
$_LANG['solusvm2vps_chart_cpu_label_load'] = 'Load average (%)';

$_LANG['solusvm2vps_chart_load_title'] = 'Load average';
$_LANG['solusvm2vps_chart_load1_label_read'] = '1 min';
$_LANG['solusvm2vps_chart_load5_label_read'] = '5 min';
$_LANG['solusvm2vps_chart_load15_label_read'] = '15 min';

$_LANG['solusvm2vps_chart_network_title'] = 'Network usage';
$_LANG['solusvm2vps_chart_network_label_read'] = 'Read KiB';
$_LANG['solusvm2vps_chart_network_label_write'] = 'Write KiB';

$_LANG['solusvm2vps_chart_disk_title'] = 'Disk usage';
$_LANG['solusvm2vps_chart_disk_label_read'] = 'Read KiB';
$_LANG['solusvm2vps_chart_disk_label_write'] = 'Write KiB';

$_LANG['solusvm2vps_chart_memory_title'] = 'Memory usage';
$_LANG['solusvm2vps_chart_memory_label_usage'] = 'Usage MiB';

$_LANG['solusvm2vps_traffic'] = 'Total traffic';

$_LANG['solusvm2vps_error_guest_tools_missing'] = 'Guest tools are required for this action.';
$_LANG['solusvm2vps_service_is_suspended'] = 'This action is not allowed for suspended service.';
$_LANG['solusvm2vps_service_suspended_state'] = 'This service is suspended';
$_LANG['solusvm2vps_backups_are_disabled'] = 'Backups are disabled for this product';
$_LANG['solusvm2vps_snapshots_are_disabled'] = 'Snapshots are disabled for this product';

$_LANG['solusvm2vps_monitoring360_consent'] = 'In order to provide you the products, services, content you requested, and/or to respond to your inquiries, we must store and process your personal data. Please read the <a href="https://360monitoring.com/legal/#privacy-policy" target="_blank" class="alert-link">Privacy Policy</a> for more information.<br />By enabling 360 monitoring, I agree that 360 Monitoring may process my personal data for the purpose of maintaining my account for as long as the account will remain non-terminated.';

$_LANG['solusvm2vps_reinstall_reset_password'] = 'Reset password';
$_LANG['solusvm2vps_reinstall_password_input_label'] = 'Operating system password';
$_LANG['solusvm2vps_reinstall_empty_password_error_message'] = 'Please fill new password';
$_LANG['solusvm2vps_password_successfully_copied_to_clipboard_message'] = 'Successfully copied to clipboard';

$_LANG['solusvm2vps_error_backup_not_found'] = 'Backup with such ID not found in SolusVM 2.0';
$_LANG['solusvm2vps_error_backup_id_missing'] = 'Backup ID is missing';
$_LANG['solusvm2vps_backups_info_title'] = 'Backup restoration will begin once the Virtual Server has been created.';
$_LANG['solusvm2vps_backups_vm_name'] = 'Source Virtual Server name';
$_LANG['solusvm2vps_backups_vm_uuid'] = 'Source Virtual Server UUID';
$_LANG['solusvm2vps_backups_backup_creation_date'] = 'Backup creation date';
$_LANG['solusvm2vps_backups_vm_disk_size'] = 'Source Virtual Server size';
$_LANG['solusvm2vps_backups_action_create_new_vm'] = 'Create new Virtual Server from backup';
$_LANG['solusvm2vps_restore_backup_to_new_vm_generic_error'] = 'Unable to create a new server from this backup. Please try again later or contact support.';
