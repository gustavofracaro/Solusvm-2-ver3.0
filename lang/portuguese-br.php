<?php
// Copyright 1999-2024. WebPros International GmbH. All rights reserved.

if (!defined('WHMCS')) {
    die('This file cannot be accessed directly');
}

$_LANG['solusvm2vps_config_option_plan'] = 'Plano';
$_LANG['solusvm2vps_config_option_operating_system'] = 'Sistema Operacional';
$_LANG['solusvm2vps_config_option_application'] = 'Aplicação';
$_LANG['solusvm2vps_config_option_default_operating_system'] = 'Sistema Operacional Padrão';
$_LANG['solusvm2vps_config_option_application'] = 'Aplicação';
$_LANG['solusvm2vps_config_option_default_location'] = 'Localização padrão';
$_LANG['solusvm2vps_config_option_backup_enabled'] = 'Habilitar Backups';
$_LANG['solusvm2vps_config_option_snapshot_enabled'] = 'Habilitar Snapshots';
$_LANG['solusvm2vps_config_option_user_data'] = 'Dados do usuário';
$_LANG['solusvm2vps_config_option_none'] = '(Nenhum)';
$_LANG['solusvm2vps_config_option_default_role'] = 'Função Padrão';
$_LANG['solusvm2vps_config_option_default_limit_group'] = 'Grupo de Limites Padrão';
$_LANG['solusvm2vps_config_option_additional_disk_offer'] = 'Oferta de Disco Adicional';
$_LANG['solusvm2vps_config_option_360monitoring_enabled'] = 'Oferecer integração do 360 Monitoring';

$_LANG['solusvm2vps_button_restart'] = 'Reiniciar';
$_LANG['solusvm2vps_button_sync'] = 'Sincronizar conta';
$_LANG['solusvm2vps_button_vnc'] = 'Acesso VNC';
$_LANG['solusvm2vps_button_reinstall'] = 'Reinstalar';
$_LANG['solusvm2vps_button_cancel'] = 'Cancelar';
$_LANG['solusvm2vps_button_close'] = 'Fechar';
$_LANG['solusvm2vps_button_start'] = 'Iniciar';
$_LANG['solusvm2vps_button_stop'] = 'Parar';
$_LANG['solusvm2vps_button_power_off'] = 'Desligar';
$_LANG['solusvm2vps_button_reset_pw'] = 'Redefinir Senha Root';
$_LANG['solusvm2vps_button_change_hostname'] = 'Alterar Nome do Host';
$_LANG['solusvm2vps_button_rescue_mode'] = 'Resgate';
$_LANG['solusvm2vps_button_create_backup'] = 'Criar backup';
$_LANG['solusvm2vps_button_restore_backup'] = 'Restaurar';
$_LANG['solusvm2vps_button_create_snapshot'] = 'Criar um snapshot';
$_LANG['solusvm2vps_button_revert_snapshot'] = 'Reverter';
$_LANG['solusvm2vps_button_login'] = 'Faça login no painel da nuvem';

$_LANG['solusvm2vps_confirm_reinstall'] = 'Reinstalar o servidor?';
$_LANG['solusvm2vps_password_reset_success'] = 'A senha do root foi redefinida. Verifique sua caixa de entrada para ver se há um e-mail com uma nova senha de servidor.';
$_LANG['solusvm2vps_password_reset_success_with_password'] = 'A senha do root foi redefinida. A nova senha: ';
$_LANG['solusvm2vps_password_reset_success_copy_password'] = 'Copiar senha para área de transferência';
$_LANG['solusvm2vps_new_hostname'] = 'Alterar nome do host para:';
$_LANG['solusvm2vps_confirm_change_hostname'] = 'Para alterar o nome do host, a máquina precisa ser reinicializada. Continuar?';
$_LANG['solusvm2vps_hostname_changed'] = 'O nome do host foi alterado';
$_LANG['solusvm2vps_reinstall_integration_enable_360monitoring'] = 'Habilitar integração 360 Monitoring';

$_LANG['solusvm2vps_error_server_already_created'] = 'O servidor com este ID já existe no SolusVM 2.';
$_LANG['solusvm2vps_error_server_not_found'] = 'O servidor não foi encontrado.';
$_LANG['solusvm2vps_error_change_hostname'] = 'Falha ao alterar o nome do host';
$_LANG['solusvm2vps_error_user_not_found'] = 'Usuário com esse e-mail não foi encontrado no SolusVM 2.0';

$_LANG['solusvm2vps_rescue_mode_summary'] = 'A inicialização a partir do ponto de recuperação ISO ajuda a corrigir incompatibilidades de kernel e sistemas de arquivos corrompidos.';
$_LANG['solusvm2vps_rescue_mode_description'] = 'Por padrão, um servidor é inicializado a partir do seu disco. Se o seu servidor foi inicializado a partir do ISO de recuperação e você deseja inicializar o servidor a partir do disco novamente, faça o seguinte:

1. Desligue ou reinicie seu servidor. Para desligar o servidor, clique no botão Parar acima ou use a linha de comando.

2. Ligue seu servidor. Para fazer isso, clique no botão Iniciar acima ou inicialize o servidor a partir do disco.';

$_LANG['solusvm2vps_exception_page_default_title'] = 'Oops! Algo deu errado.';
$_LANG['solusvm2vps_exception_page_default_message'] = 'Por favor, volte e tente novamente. Se o problema persistir, entre em contato com o suporte técnico.';
$_LANG['solusvm2vps_exception_page_pending_title'] = 'O serviço está sendo provisionado';
$_LANG['solusvm2vps_exception_page_pending_message'] = 'Seu serviço está sendo provisionado. Se você tiver alguma dúvida, entre em contato com o suporte técnico.';
$_LANG['solusvm2vps_exception_page_cancelled_title'] = 'O serviço foi encerrado';
$_LANG['solusvm2vps_exception_page_cancelled_message'] = 'Este serviço já foi encerrado. Se você tiver alguma dúvida, entre em contato com o suporte técnico.';

$_LANG['solusvm2vps_chart_interval_1h'] = 'Última 1 hora';
$_LANG['solusvm2vps_chart_interval_6h'] = 'Últimas 6 horas';
$_LANG['solusvm2vps_chart_interval_24h'] = 'Últimas 24 horas';

$_LANG['solusvm2vps_chart_integration_poweredby'] = 'Suportado por';
$_LANG['solusvm2vps_chart_integration_360monitoring'] = '360 Monitoring';

$_LANG['solusvm2vps_chart_cpu_title'] = 'Uso da CPU';
$_LANG['solusvm2vps_chart_cpu_label_load'] = 'Média de carregamento (%)';

$_LANG['solusvm2vps_chart_load_title'] = 'Média de carregamento';
$_LANG['solusvm2vps_chart_load1_label_read'] = '1 min';
$_LANG['solusvm2vps_chart_load5_label_read'] = '5 min';
$_LANG['solusvm2vps_chart_load15_label_read'] = '15 min';

$_LANG['solusvm2vps_chart_network_title'] = 'Uso da rede';
$_LANG['solusvm2vps_chart_network_label_read'] = 'Leitura KiB';
$_LANG['solusvm2vps_chart_network_label_write'] = 'Grvação KiB';

$_LANG['solusvm2vps_chart_disk_title'] = 'Uso do disco';
$_LANG['solusvm2vps_chart_disk_label_read'] = 'Leitura KiB';
$_LANG['solusvm2vps_chart_disk_label_write'] = 'Grvação KiB';

$_LANG['solusvm2vps_chart_memory_title'] = 'Uso de memória';
$_LANG['solusvm2vps_chart_memory_label_usage'] = 'Uso MiB';

$_LANG['solusvm2vps_traffic'] = 'Tráfego total';

$_LANG['solusvm2vps_error_guest_tools_missing'] = 'Ferramentas de convidado são necessárias para esta ação.';
$_LANG['solusvm2vps_service_is_suspended'] = 'Esta ação não é permitida para serviço suspenso.';
$_LANG['solusvm2vps_service_suspended_state'] = 'Este serviço está suspenso';
$_LANG['solusvm2vps_backups_are_disabled'] = 'Os backups estão desabilitados para este produto';
$_LANG['solusvm2vps_snapshots_are_disabled'] = 'Os snapshots estão desabilitados para este produto';

$_LANG['solusvm2vps_monitoring360_consent'] = 'Para fornecer produtos, serviços e conteúdo solicitados e/ou responder às suas perguntas, precisamos armazenar e processar seus dados pessoais. Por favor leia nossa <a href="https://360monitoring.com/legal/#privacy-policy" target="_blank" class="alert-link">Política de Privacidade</a> para mais informações.<br />Ao habilitar o 360 Monitoring, concordo que o 360 Monitoring pode processar meus dados pessoais com a finalidade de manter minha conta enquanto ela permanecer inalterada.';