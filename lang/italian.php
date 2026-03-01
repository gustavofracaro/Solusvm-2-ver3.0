<?php
// Copyright 1999-2024. WebPros International GmbH. All rights reserved.

if (!defined('WHMCS')) {
    die('This file cannot be accessed directly');
}

$_LANG['solusvm2vps_config_option_plan'] = 'Piano';
$_LANG['solusvm2vps_config_option_operating_system'] = 'Sistema operativo';
$_LANG['solusvm2vps_config_option_application'] = 'Applicazione';
$_LANG['solusvm2vps_config_option_default_operating_system'] = 'Sistema operativo predefinito';
$_LANG['solusvm2vps_config_option_application'] = 'Applicazione';
$_LANG['solusvm2vps_config_option_default_location'] = 'Posizione predefinita';
$_LANG['solusvm2vps_config_option_backup_enabled'] = 'Abilita backup';
$_LANG['solusvm2vps_config_option_snapshot_enabled'] = 'Abilita snapshot';
$_LANG['solusvm2vps_config_option_user_data'] = 'Dati utente';
$_LANG['solusvm2vps_config_option_none'] = '(Nessuno)';
$_LANG['solusvm2vps_config_option_default_role'] = 'Ruolo predefinito';
$_LANG['solusvm2vps_config_option_default_limit_group'] = 'Gruppo limite predefinito';
$_LANG['solusvm2vps_config_option_additional_disk_offer'] = 'Offerta disco aggiuntiva';
$_LANG['solusvm2vps_config_option_360monitoring_enabled'] = 'Offri integrazione con 360 Monitoring';

$_LANG['solusvm2vps_button_restart'] = 'Riavvia';
$_LANG['solusvm2vps_button_sync'] = 'Sincronizza account';
$_LANG['solusvm2vps_button_vnc'] = 'Accesso VNC';
$_LANG['solusvm2vps_button_reinstall'] = 'Reinstalla';
$_LANG['solusvm2vps_button_cancel'] = 'Annulla';
$_LANG['solusvm2vps_button_close'] = 'Chiudi';
$_LANG['solusvm2vps_button_start'] = 'Avvia';
$_LANG['solusvm2vps_button_stop'] = 'Arresta';
$_LANG['solusvm2vps_button_power_off'] = 'Spegni';
$_LANG['solusvm2vps_button_reset_pw'] = 'Reimposta password di root';
$_LANG['solusvm2vps_button_change_hostname'] = 'Cambia hostname';
$_LANG['solusvm2vps_button_rescue_mode'] = 'Recupera';
$_LANG['solusvm2vps_button_create_backup'] = 'Crea backup';
$_LANG['solusvm2vps_button_restore_backup'] = 'Ripara';
$_LANG['solusvm2vps_button_create_snapshot'] = 'Crea snapshot';
$_LANG['solusvm2vps_button_revert_snapshot'] = 'Ripristina';
$_LANG['solusvm2vps_button_login'] = 'Accedi al pannello cloud';

$_LANG['solusvm2vps_confirm_reinstall'] = 'Reinstallare il server?';
$_LANG['solusvm2vps_password_reset_success'] = 'La password di root è stata reimpostata. Controlla al tua casella di posta e cerca l\'e-mail contenente la nuova password del server.';
$_LANG['solusvm2vps_password_reset_success_with_password'] = 'La password di root è stata reimpostata. Ecco la nuova password: ';
$_LANG['solusvm2vps_password_reset_success_copy_password'] = 'Copia la password negli appunti';
$_LANG['solusvm2vps_new_hostname'] = 'Cambia hostname in:';
$_LANG['solusvm2vps_confirm_change_hostname'] = 'Per cambiare hostname è necessario riavviare la macchina. Continuare?';
$_LANG['solusvm2vps_hostname_changed'] = 'L\'hostname è stato cambiato';
$_LANG['solusvm2vps_reinstall_integration_enable_360monitoring'] = 'Abilita integrazione 360 Monitoring';

$_LANG['solusvm2vps_error_server_already_created'] = 'Esiste già un server con questo ID in SolusVM 2.';
$_LANG['solusvm2vps_error_server_not_found'] = 'Impossibile trovare il server.';
$_LANG['solusvm2vps_error_change_hostname'] = 'Cambio hostname non riuscito';
$_LANG['solusvm2vps_error_user_not_found'] = 'Questa e-mail non corrisponde a nessun utente in SolusVM 2.0';

$_LANG['solusvm2vps_rescue_mode_summary'] = 'L\'avvio dall\'ISO di ripristino aiuta a correggere gli errori del kernel e i file di sistema danneggiati.';
$_LANG['solusvm2vps_rescue_mode_description'] = 'Per impostazione predefinita, il server viene avviato dal disco. Se il server è stato avviato dall\'ISO di ripristino e desideri riavviare il server dal disco, procedi come segue:

1. Spegni o riavvia il server. Per spegnere il server, fai clic sul pulsante Arresta in alto oppure utilizza la riga di comando.

2. Accendi il server. Per farlo, fai clic sul pulsante Avvia qui sopra oppure avvia il server dal disco.';

$_LANG['solusvm2vps_exception_page_default_title'] = 'Ops! Si è verificato un problema.';
$_LANG['solusvm2vps_exception_page_default_message'] = 'Torna indietro e riprova. Se il problema persiste, rivolgiti al supporto tecnico.';
$_LANG['solusvm2vps_exception_page_pending_title'] = 'Provisioning del servizio in corso';
$_LANG['solusvm2vps_exception_page_pending_message'] = 'Il provisioning del servizio è in corso. Per ulteriori domande, rivolgiti al supporto tecnico.';
$_LANG['solusvm2vps_exception_page_cancelled_title'] = 'Il servizio è stato revocato';
$_LANG['solusvm2vps_exception_page_cancelled_message'] = 'Questo servizio è stato revocato. Per ulteriori domande, rivolgiti al supporto tecnico.';

$_LANG['solusvm2vps_chart_interval_1h'] = 'Ultima ora';
$_LANG['solusvm2vps_chart_interval_6h'] = 'Ultime 6 ore';
$_LANG['solusvm2vps_chart_interval_24h'] = 'Ultime 24 ore';

$_LANG['solusvm2vps_chart_integration_poweredby'] = 'A cura di';
$_LANG['solusvm2vps_chart_integration_360monitoring'] = '360 Monitoring';

$_LANG['solusvm2vps_chart_cpu_title'] = 'Utilizzo CPU';
$_LANG['solusvm2vps_chart_cpu_label_load'] = 'Carico medio (%)';

$_LANG['solusvm2vps_chart_load_title'] = 'Carico medio';
$_LANG['solusvm2vps_chart_load1_label_read'] = '1 min';
$_LANG['solusvm2vps_chart_load5_label_read'] = '5 min';
$_LANG['solusvm2vps_chart_load15_label_read'] = '15 min';

$_LANG['solusvm2vps_chart_network_title'] = 'Utilizzo rete';
$_LANG['solusvm2vps_chart_network_label_read'] = 'KiB lettura';
$_LANG['solusvm2vps_chart_network_label_write'] = 'KiB scrittura';

$_LANG['solusvm2vps_chart_disk_title'] = 'Utilizzo disco';
$_LANG['solusvm2vps_chart_disk_label_read'] = 'KiB lettura';
$_LANG['solusvm2vps_chart_disk_label_write'] = 'KiB scrittura';

$_LANG['solusvm2vps_chart_memory_title'] = 'Utilizzo memoria';
$_LANG['solusvm2vps_chart_memory_label_usage'] = 'MiB utilizzo';

$_LANG['solusvm2vps_traffic'] = 'Traffico totale';

$_LANG['solusvm2vps_error_guest_tools_missing'] = 'Questa azione richiede gli strumenti guest.';
$_LANG['solusvm2vps_service_is_suspended'] = 'Questa azione non è consentita per i servizi sospesi.';
$_LANG['solusvm2vps_service_suspended_state'] = 'Questo servizio è sospeso';
$_LANG['solusvm2vps_backups_are_disabled'] = 'I backup sono disabilitati per questo prodotto';
$_LANG['solusvm2vps_snapshots_are_disabled'] = 'Gli snapshot sono disabilitati per questo prodotto';

$_LANG['solusvm2vps_monitoring360_consent'] = 'Per poterti offrire i prodotti, i servizi e i contenuti richiesti, e/o per rispondere alle tue domande, abbiamo bisogno di conservare ed elaborare i tuoi dati personali. Leggi l\'<a href="https://360monitoring.com/legal/#privacy-policy" target="_blank" class="alert-link">Informativa sulla privacy</a> per ulteriori informazioni.<br />Abilitando 360 Monitoring, do il consenso all\'elaborazione dei miei dati personali da parte di 360 Monitoring ai fini della gestione del mio account, da ora e fino all\'eventuale eliminazione dell\'account stesso.';