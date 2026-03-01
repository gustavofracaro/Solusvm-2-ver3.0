<?php
// Copyright 1999-2024. WebPros International GmbH. All rights reserved.

if (!defined('WHMCS')) {
    die('This file cannot be accessed directly');
}

$_LANG['solusvm2vps_config_option_plan'] = 'Pakket';
$_LANG['solusvm2vps_config_option_operating_system'] = 'Besturingssysteem';
$_LANG['solusvm2vps_config_option_application'] = 'Applicatie';
$_LANG['solusvm2vps_config_option_default_operating_system'] = 'Standaard besturingssysteem';
$_LANG['solusvm2vps_config_option_application'] = 'Applicatie';
$_LANG['solusvm2vps_config_option_default_location'] = 'Standaardlocatie';
$_LANG['solusvm2vps_config_option_backup_enabled'] = 'Reservekopieën inschakelen';
$_LANG['solusvm2vps_config_option_snapshot_enabled'] = 'Snapshots inschakelen';
$_LANG['solusvm2vps_config_option_user_data'] = 'Gebruikersgegevens';
$_LANG['solusvm2vps_config_option_none'] = '(Geen)';
$_LANG['solusvm2vps_config_option_default_role'] = 'Standaardrol';
$_LANG['solusvm2vps_config_option_default_limit_group'] = 'Standaard beperkingsgroep';
$_LANG['solusvm2vps_config_option_additional_disk_offer'] = 'Aanvullend schijfaanbod';
$_LANG['solusvm2vps_config_option_360monitoring_enabled'] = 'Biedt integratie met 360 Monitoring aan';

$_LANG['solusvm2vps_button_restart'] = 'Opnieuw opstarten';
$_LANG['solusvm2vps_button_sync'] = 'Account synchroniseren';
$_LANG['solusvm2vps_button_vnc'] = 'VNC-toegang';
$_LANG['solusvm2vps_button_reinstall'] = 'Opnieuw installeren';
$_LANG['solusvm2vps_button_cancel'] = 'Annuleren';
$_LANG['solusvm2vps_button_close'] = 'Sluiten';
$_LANG['solusvm2vps_button_start'] = 'Starten';
$_LANG['solusvm2vps_button_stop'] = 'Stoppen';
$_LANG['solusvm2vps_button_power_off'] = 'Uitschakelen';
$_LANG['solusvm2vps_button_reset_pw'] = 'Wachtwoord root-account opnieuw instellen';
$_LANG['solusvm2vps_button_change_hostname'] = 'Hostnaam wijzigen';
$_LANG['solusvm2vps_button_rescue_mode'] = 'Herstel';
$_LANG['solusvm2vps_button_create_backup'] = 'Reservekopie aanmaken';
$_LANG['solusvm2vps_button_restore_backup'] = 'Terugplaatsen';
$_LANG['solusvm2vps_button_create_snapshot'] = 'Snapshot aanmaken';
$_LANG['solusvm2vps_button_revert_snapshot'] = 'Ongedaan maken';
$_LANG['solusvm2vps_button_login'] = 'Aanmelden bij cloudpannel';

$_LANG['solusvm2vps_confirm_reinstall'] = 'De server opnieuw installeren?';
$_LANG['solusvm2vps_password_reset_success'] = 'Het root-wachtwoord is opnieuw ingesteld. In uw postvak vindt u een e-mail met een nieuw wachtwoord voor de server.';
$_LANG['solusvm2vps_password_reset_success_with_password'] = 'Het root-wachtwoord is opnieuw ingesteld. Het nieuwe wachtwoord: ';
$_LANG['solusvm2vps_password_reset_success_copy_password'] = 'Kopieer wachtwoord naar klembord';
$_LANG['solusvm2vps_new_hostname'] = 'Wijzig de hostnaam naar:';
$_LANG['solusvm2vps_confirm_change_hostname'] = 'Om de hostnaam te wijzigen, moet de machine opnieuw worden opgestart. Wilt u doorgaan?';
$_LANG['solusvm2vps_hostname_changed'] = 'De hostnaam is gewijzigd';
$_LANG['solusvm2vps_reinstall_integration_enable_360monitoring'] = 'Integratie met 360 Monitoring inschakelen';

$_LANG['solusvm2vps_error_server_already_created'] = 'Er bestaat al een server met dit kernmerk in SolusVM 2.';
$_LANG['solusvm2vps_error_server_not_found'] = 'De server is niet gevonden.';
$_LANG['solusvm2vps_error_change_hostname'] = 'Het wijzigen van de hostnaam is mislukt';
$_LANG['solusvm2vps_error_user_not_found'] = 'Er is geen gebruiker gevonden met dit e-mailadres in SolusVM 2.0';

$_LANG['solusvm2vps_rescue_mode_summary'] = 'Opstarten vanaf de herstel-ISO geeft u de kans om kernel-mismatches en beschadigde bestandssystemen te herstellen.';
$_LANG['solusvm2vps_rescue_mode_description'] = 'Standaard wordt een server opgestart vanaf de eigen schijf. Als uw server is opgestart vanaf de herstel-ISO en u wilt de server opnieuw opstarten vanaf de schijf, doe dan het volgende:

1. Sluit uw server af of start deze opnieuw op. Om de server af te sluiten, klikt u op de knop Stoppen hierboven of maakt u gebruik de opdrachtregel. 

2. Zet de server aan. Dit doet u door te klikken op de startknop hierboven of door de server opnieuw op vanaf de schijf.';

$_LANG['solusvm2vps_exception_page_default_title'] = 'Oeps, er is iets misgegaan.';
$_LANG['solusvm2vps_exception_page_default_message'] = 'Ga terug en probeer het opnieuw. Als het probleem zich blijft herhalen, neem dan contact op met de technische ondersteuning.';
$_LANG['solusvm2vps_exception_page_pending_title'] = 'De service wordt geïnstalleerd';
$_LANG['solusvm2vps_exception_page_pending_message'] = 'Uw service wordt geïnstalleerd. Als u verder nog vragen hebt, neem dan contact op met support.';
$_LANG['solusvm2vps_exception_page_cancelled_title'] = 'De dienst is beëindigd';
$_LANG['solusvm2vps_exception_page_cancelled_message'] = 'Deze service is al beëindigd. Als u vragen heeft, dan kunt u contact opnemen met support.';

$_LANG['solusvm2vps_chart_interval_1h'] = 'Afgelopen uur';
$_LANG['solusvm2vps_chart_interval_6h'] = 'Afgelopen 6 uur';
$_LANG['solusvm2vps_chart_interval_24h'] = 'Afgelopen 24 uur';

$_LANG['solusvm2vps_chart_integration_poweredby'] = 'Powered by';
$_LANG['solusvm2vps_chart_integration_360monitoring'] = '360 Monitoring';

$_LANG['solusvm2vps_chart_cpu_title'] = 'CPU-gebruik';
$_LANG['solusvm2vps_chart_cpu_label_load'] = 'Gemiddelde belasting (%)';

$_LANG['solusvm2vps_chart_load_title'] = 'Gemiddelde belasting';
$_LANG['solusvm2vps_chart_load1_label_read'] = '1 min';
$_LANG['solusvm2vps_chart_load5_label_read'] = '5 min';
$_LANG['solusvm2vps_chart_load15_label_read'] = '15 min';

$_LANG['solusvm2vps_chart_network_title'] = 'Netwerkverbruik';
$_LANG['solusvm2vps_chart_network_label_read'] = 'KiB lezen';
$_LANG['solusvm2vps_chart_network_label_write'] = 'KiB schrijven';

$_LANG['solusvm2vps_chart_disk_title'] = 'Schijfruimtegebruik';
$_LANG['solusvm2vps_chart_disk_label_read'] = 'KiB lezen';
$_LANG['solusvm2vps_chart_disk_label_write'] = 'KiB schrijven';

$_LANG['solusvm2vps_chart_memory_title'] = 'Geheugengebruik';
$_LANG['solusvm2vps_chart_memory_label_usage'] = 'MiB-verbruik';

$_LANG['solusvm2vps_traffic'] = 'Totaal dataverkeer';

$_LANG['solusvm2vps_error_guest_tools_missing'] = 'Voor deze actie zijn Guest Tools vereist.';
$_LANG['solusvm2vps_service_is_suspended'] = 'Deze bewerking kan niet worden uitgevoerd voor een service die is opgeschort.';
$_LANG['solusvm2vps_service_suspended_state'] = 'De service is opgeschort';
$_LANG['solusvm2vps_backups_are_disabled'] = 'Reservekopieën zijn uitgeschakeld voor dit product';
$_LANG['solusvm2vps_snapshots_are_disabled'] = 'Snapshots zijn uitgeschakeld voor dit product';

$_LANG['solusvm2vps_monitoring360_consent'] = 'Om u de door u gevraagde producten, diensten en informatie te kunnen leveren en/of om op uw vragen te kunnen reageren, moeten wij uw persoonsgegevens opslaan en verwerken. Lees het <a href="https://360monitoring.com/legal/#privacy-policy" target="_blank" class="alert-link">Privacybeleid</a> voor meer informatie.<br /> Door 360 Monitoring in te schakelen, ga u ermee akkoord dat 360 Monitoring mijn persoonlijke gegevens mag verwerken met het doel mijn account te behouden, zolang het account niet wordt beëindigd.';