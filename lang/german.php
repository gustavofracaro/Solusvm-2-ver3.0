<?php
// Copyright 1999-2024. WebPros International GmbH. All rights reserved.

if (!defined('WHMCS')) {
    die('This file cannot be accessed directly');
}

$_LANG['solusvm2vps_config_option_plan'] = 'Plan';
$_LANG['solusvm2vps_config_option_operating_system'] = 'Betriebssystem';
$_LANG['solusvm2vps_config_option_application'] = 'Anwendung';
$_LANG['solusvm2vps_config_option_default_operating_system'] = 'Standard-Betriebssystem';
$_LANG['solusvm2vps_config_option_application'] = 'Anwendung';
$_LANG['solusvm2vps_config_option_default_location'] = 'Standardort';
$_LANG['solusvm2vps_config_option_backup_enabled'] = 'Backups aktivieren';
$_LANG['solusvm2vps_config_option_snapshot_enabled'] = 'Snapshots aktivieren';
$_LANG['solusvm2vps_config_option_user_data'] = 'User Data';
$_LANG['solusvm2vps_config_option_none'] = '(Leer)';
$_LANG['solusvm2vps_config_option_default_role'] = 'Standardrolle';
$_LANG['solusvm2vps_config_option_default_limit_group'] = 'Standard-Limitgruppe';
$_LANG['solusvm2vps_config_option_additional_disk_offer'] = 'Zusätzliches Festplattenspeicher-Angebot';
$_LANG['solusvm2vps_config_option_360monitoring_enabled'] = '360 Monitoring-Integration anbieten';

$_LANG['solusvm2vps_button_restart'] = 'Neu starten';
$_LANG['solusvm2vps_button_sync'] = 'Konto synchronisieren';
$_LANG['solusvm2vps_button_vnc'] = 'VNC-Zugang';
$_LANG['solusvm2vps_button_reinstall'] = 'Neu installieren';
$_LANG['solusvm2vps_button_cancel'] = 'Abbrechen';
$_LANG['solusvm2vps_button_close'] = 'Schließen';
$_LANG['solusvm2vps_button_start'] = 'Starten';
$_LANG['solusvm2vps_button_stop'] = 'Anhalten';
$_LANG['solusvm2vps_button_power_off'] = 'Ausschalten';
$_LANG['solusvm2vps_button_reset_pw'] = 'Root-Passwort zurücksetzen';
$_LANG['solusvm2vps_button_change_hostname'] = 'Hostname ändern';
$_LANG['solusvm2vps_button_rescue_mode'] = 'Retten';
$_LANG['solusvm2vps_button_create_backup'] = 'Backup erstellen';
$_LANG['solusvm2vps_button_restore_backup'] = 'Wiederherstellen';
$_LANG['solusvm2vps_button_create_snapshot'] = 'Snapshot erstellen';
$_LANG['solusvm2vps_button_revert_snapshot'] = 'Zurücksetzen';
$_LANG['solusvm2vps_button_login'] = 'In Cloud-Panel anmelden';

$_LANG['solusvm2vps_confirm_reinstall'] = 'Server neu installieren?';
$_LANG['solusvm2vps_password_reset_success'] = 'Das Root-Passwort wurde zurückgesetzt. Bitte schauen Sie in Ihr Postfach nach einer E-Mail mit einem neuen Server-Passwort.';
$_LANG['solusvm2vps_password_reset_success_with_password'] = 'Das Root-Passwort wurde zurückgesetzt. Das neue Passwort: ';
$_LANG['solusvm2vps_password_reset_success_copy_password'] = 'Passwort in die Zwischenablage kopieren';
$_LANG['solusvm2vps_new_hostname'] = 'Hostname ändern zu:';
$_LANG['solusvm2vps_confirm_change_hostname'] = 'Um den Hostnamen zu ändern, muss die Maschine neu gestartet werden. Fortfahren?';
$_LANG['solusvm2vps_hostname_changed'] = 'Der Hostname wurde geändert';
$_LANG['solusvm2vps_reinstall_integration_enable_360monitoring'] = '360 Monitoring-Integration aktivieren';

$_LANG['solusvm2vps_error_server_already_created'] = 'Der Server mit dieser ID existiert bereits in SolusVM 2.';
$_LANG['solusvm2vps_error_server_not_found'] = 'Server wurde nicht gefunden.';
$_LANG['solusvm2vps_error_change_hostname'] = 'Änderung des Hostnamens fehlgeschlagen';
$_LANG['solusvm2vps_error_user_not_found'] = 'Benutzer mit dieser E-Mail-Adresse nicht in SolusVM 2.0 gefunden';

$_LANG['solusvm2vps_rescue_mode_summary'] = 'Wenn Sie den Server über die ISO-Wiederherstellungsdatei starten, können Kernel-Konflikte und beschädigte Dateisysteme behoben werden.';
$_LANG['solusvm2vps_rescue_mode_description'] = 'Der Server wird standardmäßig von seiner Festplatte aus gestartet. Wenn Ihr Server von der ISO-Wiederherstellungsdatei gestartet wurde und Sie den Server wieder von der Festplatte aus starten möchten, tun Sie Folgendes:

1. Fahren Sie den Server herunter oder starten Sie ihn neu. Um den Server herunterzufahren, klicken Sie auf die Schaltfläche Anhalten oder nutzen dazu die Befehlszeile.

2. Starten Sie Ihren Server. Um dies zu tun, klicken Sie oben auf die Schaltfläche Starten oder starten den Server von der Festplatte aus.';

$_LANG['solusvm2vps_exception_page_default_title'] = 'Ups! Etwas ist schiefgelaufen.';
$_LANG['solusvm2vps_exception_page_default_message'] = 'Bitte gehen Sie zurück und versuchen Sie es erneut. Wenn das Problem weiterhin besteht, wenden Sie sich bitte an den technischen Support.';
$_LANG['solusvm2vps_exception_page_pending_title'] = 'Der Dienst wird bereitgestellt';
$_LANG['solusvm2vps_exception_page_pending_message'] = 'Ihr Dienst wird bereitgestellt. Wenn Sie Fragen haben sollten, kontaktieren Sie bitte den technischen Support.';
$_LANG['solusvm2vps_exception_page_cancelled_title'] = 'Der Dienst wurde beendet';
$_LANG['solusvm2vps_exception_page_cancelled_message'] = 'Der Dienst wurde bereits beendet. Wenn Sie Fragen haben sollten, kontaktieren Sie bitte den technischen Support.';

$_LANG['solusvm2vps_chart_interval_1h'] = 'Letzte Stunde';
$_LANG['solusvm2vps_chart_interval_6h'] = 'Letzte 6 Stunden';
$_LANG['solusvm2vps_chart_interval_24h'] = 'Letzte 24 Stunden';

$_LANG['solusvm2vps_chart_integration_poweredby'] = 'Powered by';
$_LANG['solusvm2vps_chart_integration_360monitoring'] = '360 Monitoring';

$_LANG['solusvm2vps_chart_cpu_title'] = 'CPU-Auslastung';
$_LANG['solusvm2vps_chart_cpu_label_load'] = 'Durchschnittliche Auslastung (%)';

$_LANG['solusvm2vps_chart_load_title'] = 'Durchschnittliche Auslastung';
$_LANG['solusvm2vps_chart_load1_label_read'] = '1 Min.';
$_LANG['solusvm2vps_chart_load5_label_read'] = '5 Min.';
$_LANG['solusvm2vps_chart_load15_label_read'] = '15 Min.';

$_LANG['solusvm2vps_chart_network_title'] = 'Netzwerkauslastung';
$_LANG['solusvm2vps_chart_network_label_read'] = 'KiB lesen';
$_LANG['solusvm2vps_chart_network_label_write'] = 'KiB schreiben';

$_LANG['solusvm2vps_chart_disk_title'] = 'Festplattenauslastung';
$_LANG['solusvm2vps_chart_disk_label_read'] = 'KiB lesen';
$_LANG['solusvm2vps_chart_disk_label_write'] = 'KiB schreiben';

$_LANG['solusvm2vps_chart_memory_title'] = 'Speicherauslastung';
$_LANG['solusvm2vps_chart_memory_label_usage'] = 'MiB-Auslastung';

$_LANG['solusvm2vps_traffic'] = 'Datenverkehr insgesamt';

$_LANG['solusvm2vps_error_guest_tools_missing'] = 'Für diese Aktion werden Gast-Tools benötigt.';
$_LANG['solusvm2vps_service_is_suspended'] = 'Diese Aktion ist für gesperrte Dienste nicht erlaubt.';
$_LANG['solusvm2vps_service_suspended_state'] = 'Dieser Dienst wurde gesperrt';
$_LANG['solusvm2vps_backups_are_disabled'] = 'Backups sind für dieses Produkt deaktiviert';
$_LANG['solusvm2vps_snapshots_are_disabled'] = 'Snapshots sind für dieses Produkt deaktiviert';

$_LANG['solusvm2vps_monitoring360_consent'] = 'Um Ihnen die von Ihnen angefragten Produkte, Dienste, Inhalte bereitzustellen und/oder um auf Ihre Anfragen antworten zu können, müssen wir Ihre persönlichen Daten speichern und verarbeiten. Bitte lesen Sie unsere <a href="https://360monitoring.com/legal/#privacy-policy" target="_blank" class="alert-link">Datenschutzbestimmungen</a>, um mehr zu erfahren.<br />Durch das Aktivieren von 360 Monitoring stimme ich zu, dass 360 Monitoring meine persönlichen Daten für den Zweck der Verwaltung meines Kontos verarbeiten darf, solange mein Konto nicht gelöscht wurde.';