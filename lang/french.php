<?php
// Copyright 1999-2024. WebPros International GmbH. All rights reserved.

if (!defined('WHMCS')) {
    die('This file cannot be accessed directly');
}

$_LANG['solusvm2vps_config_option_plan'] = 'Offre';
$_LANG['solusvm2vps_config_option_operating_system'] = 'Système d\'exploitation';
$_LANG['solusvm2vps_config_option_application'] = 'Application';
$_LANG['solusvm2vps_config_option_default_operating_system'] = 'Système d\'exploitation par défaut';
$_LANG['solusvm2vps_config_option_application'] = 'Application';
$_LANG['solusvm2vps_config_option_default_location'] = 'Emplacement par défaut';
$_LANG['solusvm2vps_config_option_backup_enabled'] = 'Activer les sauvegardes';
$_LANG['solusvm2vps_config_option_snapshot_enabled'] = 'Activer les snapshots';
$_LANG['solusvm2vps_config_option_user_data'] = 'Données utilisateur';
$_LANG['solusvm2vps_config_option_none'] = '(Aucun·e)';
$_LANG['solusvm2vps_config_option_default_role'] = 'Rôle par défaut';
$_LANG['solusvm2vps_config_option_default_limit_group'] = 'Groupes de limites par défaut';
$_LANG['solusvm2vps_config_option_additional_disk_offer'] = 'Offre disque supplémentaire';
$_LANG['solusvm2vps_config_option_360monitoring_enabled'] = 'Proposer l\'intégration 360 Monitoring';

$_LANG['solusvm2vps_button_restart'] = 'Redémarrer';
$_LANG['solusvm2vps_button_sync'] = 'Synchroniser le compte';
$_LANG['solusvm2vps_button_vnc'] = 'Accès VNC';
$_LANG['solusvm2vps_button_reinstall'] = 'Réinstaller';
$_LANG['solusvm2vps_button_cancel'] = 'Annuler';
$_LANG['solusvm2vps_button_close'] = 'Fermer';
$_LANG['solusvm2vps_button_start'] = 'Démarrer';
$_LANG['solusvm2vps_button_stop'] = 'Arrêter';
$_LANG['solusvm2vps_button_power_off'] = 'Éteindre';
$_LANG['solusvm2vps_button_reset_pw'] = 'Réinitialiser le mot de passe "root"';
$_LANG['solusvm2vps_button_change_hostname'] = 'Changer le nom d\'hôte';
$_LANG['solusvm2vps_button_rescue_mode'] = 'Récupérer';
$_LANG['solusvm2vps_button_create_backup'] = 'Créer une sauvegarde';
$_LANG['solusvm2vps_button_restore_backup'] = 'Restaurer';
$_LANG['solusvm2vps_button_create_snapshot'] = 'Créer un snapshot';
$_LANG['solusvm2vps_button_revert_snapshot'] = 'Revenir à la version antérieure';
$_LANG['solusvm2vps_button_login'] = 'Se connecter au panel cloud';

$_LANG['solusvm2vps_confirm_reinstall'] = 'Réinstaller le serveur ?';
$_LANG['solusvm2vps_password_reset_success'] = 'Le mot de passe root a été réinitialisé. Vous avez reçu un e-mail avec un nouveau mot de passe serveur. Veuillez consulter votre messagerie.';
$_LANG['solusvm2vps_password_reset_success_with_password'] = 'Le mot de passe root a été réinitialisé. Nouveau mot de passe : ';
$_LANG['solusvm2vps_password_reset_success_copy_password'] = 'Copier le mot de passe dans le presse-papiers';
$_LANG['solusvm2vps_new_hostname'] = 'Remplacer le nom d\'hôte par :';
$_LANG['solusvm2vps_confirm_change_hostname'] = 'Pour changer le nom d\'hôte, la machine doit être redémarrée. Continuer ?';
$_LANG['solusvm2vps_hostname_changed'] = 'Le nom d\'hôte a été modifié.';
$_LANG['solusvm2vps_reinstall_integration_enable_360monitoring'] = 'Activer l\'intégration 360 Monitoring';

$_LANG['solusvm2vps_error_server_already_created'] = 'Un serveur avec le même ID existe déjà dans SolusVM 2.';
$_LANG['solusvm2vps_error_server_not_found'] = 'Le serveur n\'a pas été trouvé.';
$_LANG['solusvm2vps_error_change_hostname'] = 'Échec du changement de nom d\'hôte';
$_LANG['solusvm2vps_error_user_not_found'] = 'Aucun utilisateur avec cette adresse e-mail dans SolusVM 2.0';

$_LANG['solusvm2vps_rescue_mode_summary'] = 'Lorsque vous redémarrez depuis l\'ISO de secours, cela vous permet de corriger des incompatibilités de serveurs et des systèmes de fichiers corrompus.';
$_LANG['solusvm2vps_rescue_mode_description'] = 'Par défaut, le serveur démarre depuis son disque. Si votre serveur a démarré depuis une image ISO de secours et si vous voulez à nouveau démarrer le serveur depuis le disque, procédez comme suit :

1. Éteignez ou redémarrez votre serveur. Pour redémarrer le serveur, cliquez sur le bouton Arrêter ci-dessus ou utilisez la ligne de commande.

2. Allumez votre serveur. Pour cela, cliquez sur le bouton Démarrer ou démarrez le serveur depuis son disque.';

$_LANG['solusvm2vps_exception_page_default_title'] = 'Oups. Un problème s\'est produit.';
$_LANG['solusvm2vps_exception_page_default_message'] = 'Veuillez revenir à l\'étape précédente et essayez à nouveau. Si le problème persiste, contactez l\'assistance technique.';
$_LANG['solusvm2vps_exception_page_pending_title'] = 'Le service a été provisionné.';
$_LANG['solusvm2vps_exception_page_pending_message'] = 'Votre service est en cours de provisioning. Si vous avez des questions, veuillez contacter l\'assistance technique.';
$_LANG['solusvm2vps_exception_page_cancelled_title'] = 'Le service a été arrêté.';
$_LANG['solusvm2vps_exception_page_cancelled_message'] = 'Ce service a déjà été arrêté. Si vous avez des questions, veuillez contacter l\'assistance technique.';

$_LANG['solusvm2vps_chart_interval_1h'] = 'Dernière heure';
$_LANG['solusvm2vps_chart_interval_6h'] = '6 dernières heures';
$_LANG['solusvm2vps_chart_interval_24h'] = '24 dernières heures';

$_LANG['solusvm2vps_chart_integration_poweredby'] = 'Propulsé par';
$_LANG['solusvm2vps_chart_integration_360monitoring'] = '360 Monitoring';

$_LANG['solusvm2vps_chart_cpu_title'] = 'Utilisation du CPU';
$_LANG['solusvm2vps_chart_cpu_label_load'] = 'Charge moyenne (%)';

$_LANG['solusvm2vps_chart_load_title'] = 'Charge moyenne';
$_LANG['solusvm2vps_chart_load1_label_read'] = '1 min';
$_LANG['solusvm2vps_chart_load5_label_read'] = '5 min';
$_LANG['solusvm2vps_chart_load15_label_read'] = '15 min';

$_LANG['solusvm2vps_chart_network_title'] = 'Utilisation réseau';
$_LANG['solusvm2vps_chart_network_label_read'] = 'KiB lecture';
$_LANG['solusvm2vps_chart_network_label_write'] = 'KiB écriture';

$_LANG['solusvm2vps_chart_disk_title'] = 'Utilisation disque';
$_LANG['solusvm2vps_chart_disk_label_read'] = 'KiB lecture';
$_LANG['solusvm2vps_chart_disk_label_write'] = 'KiB écriture';

$_LANG['solusvm2vps_chart_memory_title'] = 'Utilisation mémoire';
$_LANG['solusvm2vps_chart_memory_label_usage'] = 'MiB utilisation';

$_LANG['solusvm2vps_traffic'] = 'Trafic total';

$_LANG['solusvm2vps_error_guest_tools_missing'] = 'Cette action requiert des outils tiers.';
$_LANG['solusvm2vps_service_is_suspended'] = 'Cette action n\'est pas autorisée pour le service suspendu.';
$_LANG['solusvm2vps_service_suspended_state'] = 'Ce service est suspendu.';
$_LANG['solusvm2vps_backups_are_disabled'] = 'Les sauvegardes sont désactivées pour ce produit.';
$_LANG['solusvm2vps_snapshots_are_disabled'] = 'Les snapshots sont désactivés pour ce produit.';

$_LANG['solusvm2vps_monitoring360_consent'] = 'Afin de vous fournir ces produits, ces services et le contenu demandé et/ou pour répondre à vos demandes, nous devons stocker et traiter vos données personnelles. Veuillez lire la <a href="https://360monitoring.com/legal/#privacy-policy" target="_blank" class="alert-link">Politique de confidentialité</a> pour en savoir plus.<br />En activant 360 Monitoring, j\'accepte que 360 Monitoring traite mes données personnelles pour maintenir mon compte pour la durée pendant laquelle ce compte est valide.';