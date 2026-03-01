<style>
.rescue-container {
    display: flex;
    margin-bottom: 10px;
}

.boot-mode-button {
    border: 1px solid silver;
    cursor: pointer;
    display: grid;
    flex: 1;
    grid-template-columns: 50px 1fr;
    grid-template-rows: auto;
    grid-column-gap: 0px;
    grid-row-gap: 0px;
    margin: 5px;
}

.boot-mode-button--pushed {
    background-color: #ececec;
}

.boot-mode-button-image {
    grid-area: 1 / 1 / 3 / 2;
    text-align: center;
}

.boot-mode-button-title {
    font-size: 17px;
    font-weight: bold;
    grid-area: 1 / 2 / 2 / 3;
}

.boot-mode-button-description {
    grid-area: 2 / 2 / 3 / 3;
}

.action-panels {
    margin-top: 16px;
    padding: 14px;
    border-radius: 10px;
    background: linear-gradient(135deg, #e7f1ff 0%, #f4f9ff 100%);
    border: 1px solid #cfe2ff;
    display: none;
}

.action-panel {
    display: none;
}

.action-panel-title {
    font-weight: bold;
    color: #0b5ed7;
    font-size: 14px;
    margin-bottom: 10px;
}

.action-success {
    display: none;
    color: #0f6b2f;
    font-weight: bold;
    margin-bottom: 10px;
}
.action-api-debug {
    margin-top: 10px;
    padding: 10px;
    border: 1px solid #ddd;
    background: #fafafa;
    color: #111;
    max-height: 280px;
    overflow: auto;
    white-space: pre-wrap;
    word-break: break-word;
    font-family: monospace;
    font-size: 12px;
    display: none;
}

</style>

<script src="modules/servers/solusvm2vps/node_modules/chart.js/dist/Chart.js"></script>
<script type="text/javascript" src="modules/servers/solusvm2vps/node_modules/jsonform/deps/underscore.js"></script>
<script type="text/javascript" src="modules/servers/solusvm2vps/node_modules/jsonform/deps/opt/jsv.js"></script>
<script type="text/javascript" src="modules/servers/solusvm2vps/node_modules/jsonform/lib/jsonform.js"></script>
<script type="text/javascript" src="modules/servers/solusvm2vps/js/jquery.validate.min.js"></script>
<script src="modules/servers/solusvm2vps/js/moment.min.js"></script>
<script src="modules/servers/solusvm2vps/js/chartjs-adapter-moment.min.js"></script>
<script type="module" src="modules/servers/solusvm2vps/analytics/mixpanel-tracker.js"></script>

<script>
    let ANALYTICS_EVENTS = null;

    const loadAnalyticsEvents = async () => {
        try {
            const response = await fetch('modules/servers/solusvm2vps/analytics/mixpanel-constants.json');
            ANALYTICS_EVENTS = await response.json();
        } catch (e) {
            console.error('Failed to load Mixpanel event constants from mixpanel-constants.json');
        }
    };

    loadAnalyticsEvents();
</script>


<div class="media">
    <div class="media-body">
        <div class="panel panel-default">
            <div class="panel-body" style="position: relative">
                <div class="alert alert-danger" id="suspended-alert" hidden style="margin: 26px 0 14px">
                    {$LANG.solusvm2vps_service_suspended_state|escape:'html'}
                </div>
                
                <div id="product-actions" style="margin-top: 10px; padding: 14px; border-radius: 10px; background: linear-gradient(135deg, #e7f1ff 0%, #f4f9ff 100%); border: 1px solid #cfe2ff; display: flex; flex-wrap: wrap; gap: 18px;">
                    <div style="display: flex; flex-direction: column; align-items: center; gap: 6px;">
                        <button onclick="startServer();" id="btn-start-server" class="btn btn-info" title="{$LANG.solusvm2vps_button_start|escape:'html'}" aria-label="{$LANG.solusvm2vps_button_start|escape:'html'}" style="background: none; border: none; padding: 0;">
                            <img src="modules/servers/solusvm2vps/galeria/actions/server-start.png" alt="{$LANG.solusvm2vps_button_start|escape:'html'}" style="height:78px;width:78px;vertical-align:text-bottom;" />
                        </button>
                        <a href="javascript:;" onclick="startServer();" style="font-size: 12px; color: #0a3d91; font-weight: 600; text-decoration: none;">{$LANG.solusvm2vps_button_start|escape:'html'}</a>
                    </div>
                    <div style="display: flex; flex-direction: column; align-items: center; gap: 6px;">
                        <button onclick="stopServer();" id="btn-stop-server" class="btn btn-info" title="{$LANG.solusvm2vps_button_stop|escape:'html'}" aria-label="{$LANG.solusvm2vps_button_stop|escape:'html'}" style="background: none; border: none; padding: 0;">
                            <img src="modules/servers/solusvm2vps/galeria/actions/server-stop.png" alt="{$LANG.solusvm2vps_button_stop|escape:'html'}" style="height:78px;width:78px;vertical-align:text-bottom;" />
                        </button>
                        <a href="javascript:;" onclick="stopServer();" style="font-size: 12px; color: #0a3d91; font-weight: 600; text-decoration: none;">{$LANG.solusvm2vps_button_stop|escape:'html'}</a>
                    </div>
                    <div style="display: flex; flex-direction: column; align-items: center; gap: 6px;">
                        <button onclick="powerOffServer();" id="btn-power-off-server" class="btn btn-info" title="{$LANG.solusvm2vps_button_power_off|escape:'html'}" aria-label="{$LANG.solusvm2vps_button_power_off|escape:'html'}" style="background: none; border: none; padding: 0;">
                            <img src="modules/servers/solusvm2vps/galeria/actions/server-shutdown.png" alt="{$LANG.solusvm2vps_button_power_off|escape:'html'}" style="height:78px;width:78px;vertical-align:text-bottom;" />
                        </button>
                        <a href="javascript:;" onclick="powerOffServer();" style="font-size: 12px; color: #0a3d91; font-weight: 600; text-decoration: none;">{$LANG.solusvm2vps_button_power_off|escape:'html'}</a>
                    </div>
                    <div style="display: flex; flex-direction: column; align-items: center; gap: 6px;">
                        <button onclick="restartServer();" id="btn-restart-server" class="btn btn-info" title="{$LANG.solusvm2vps_button_restart|escape:'html'}" aria-label="{$LANG.solusvm2vps_button_restart|escape:'html'}" style="background: none; border: none; padding: 0;">
                            <img src="modules/servers/solusvm2vps/galeria/actions/server-reboot.png" alt="{$LANG.solusvm2vps_button_restart|escape:'html'}" style="height:78px;width:78px;vertical-align:text-bottom;" />
                        </button>
                        <a href="javascript:;" onclick="restartServer();" style="font-size: 12px; color: #0a3d91; font-weight: 600; text-decoration: none;">{$LANG.solusvm2vps_button_restart|escape:'html'}</a>
                    </div>
                    <div style="display: flex; flex-direction: column; align-items: center; gap: 6px;">
                        <button onclick="reinstallServer();" id="btn-reinstall-server" class="btn btn-info" title="{$LANG.solusvm2vps_button_reinstall|escape:'html'}" aria-label="{$LANG.solusvm2vps_button_reinstall|escape:'html'}" style="background: none; border: none; padding: 0;">
                            <img src="modules/servers/solusvm2vps/galeria/actions/server-rebuild.png" alt="{$LANG.solusvm2vps_button_reinstall|escape:'html'}" style="height:78px;width:78px;vertical-align:text-bottom;" />
                        </button>
                        <a href="javascript:;" onclick="reinstallServer();" style="font-size: 12px; color: #0a3d91; font-weight: 600; text-decoration: none;">{$LANG.solusvm2vps_button_reinstall|escape:'html'}</a>
                    </div>
                    <div style="display: flex; flex-direction: column; align-items: center; gap: 6px;">
                        <button onclick="openVncDialog();" id="btn-vnc" class="btn btn-info" title="{$LANG.solusvm2vps_button_vnc|escape:'html'}" aria-label="{$LANG.solusvm2vps_button_vnc|escape:'html'}" style="background: none; border: none; padding: 0;">
                            <img src="modules/servers/solusvm2vps/galeria/actions/console-vnc.png" alt="{$LANG.solusvm2vps_button_vnc|escape:'html'}" style="height:78px;width:78px;vertical-align:text-bottom;" />
                        </button>
                        <a href="javascript:;" onclick="openVncDialog();" style="font-size: 12px; color: #0a3d91; font-weight: 600; text-decoration: none;">{$LANG.solusvm2vps_button_vnc|escape:'html'}</a>
                    </div>
                    <div style="display: flex; flex-direction: column; align-items: center; gap: 6px;">
                        <button onclick="resetPassword();" id="btn-reset-pw" class="btn btn-info" title="Senha Root" aria-label="Senha Root" style="background: none; border: none; padding: 0;">
                            <img src="modules/servers/solusvm2vps/galeria/actions/password-configuration.png" alt="Senha Root" style="height:78px;width:78px;vertical-align:text-bottom;" />
                        </button>
                        <a href="javascript:;" onclick="resetPassword();" style="font-size: 12px; color: #0a3d91; font-weight: 600; text-decoration: none;">Senha Root</a>
                    </div>
                    <div style="display: flex; flex-direction: column; align-items: center; gap: 6px;">
                        <button onclick="changeHostname();" id="btn-change-hostname" class="btn btn-info" title="Hostname" aria-label="Hostname" style="background: none; border: none; padding: 0;">
                            <img src="modules/servers/solusvm2vps/galeria/actions/server-details.png" alt="Hostname" style="height:78px;width:78px;vertical-align:text-bottom;" />
                        </button>
                        <a href="javascript:;" onclick="changeHostname();" style="font-size: 12px; color: #0a3d91; font-weight: 600; text-decoration: none;">Hostname</a>
                    </div>
                    <div style="display: flex; flex-direction: column; align-items: center; gap: 6px;">
                        <button onclick="rescueMode();" id="btn-rescue-mode" class="btn btn-info" title="{$LANG.solusvm2vps_button_rescue_mode|escape:'html'}" aria-label="{$LANG.solusvm2vps_button_rescue_mode|escape:'html'}" style="background: none; border: none; padding: 0;">
                            <img src="modules/servers/solusvm2vps/galeria/actions/server-rescue.png" alt="{$LANG.solusvm2vps_button_rescue_mode|escape:'html'}" style="height:78px;width:78px;vertical-align:text-bottom;" />
                        </button>
                        <a href="javascript:;" onclick="rescueMode();" style="font-size: 12px; color: #0a3d91; font-weight: 600; text-decoration: none;">{$LANG.solusvm2vps_button_rescue_mode|escape:'html'}</a>
                    </div>
                    <div style="display: flex; flex-direction: column; align-items: center; gap: 6px;">
                        <button onclick="openSnapshotsDialog();" id="btn-snapshots" class="btn btn-info" title="Snapshot" aria-label="Snapshot" style="background: none; border: none; padding: 0;">
                            <img src="modules/servers/solusvm2vps/galeria/actions/snapshots.png" alt="Snapshot" style="height:78px;width:78px;vertical-align:text-bottom;" />
                        </button>
                        <a href="javascript:;" onclick="openSnapshotsDialog();" style="font-size: 12px; color: #0a3d91; font-weight: 600; text-decoration: none;">Snapshot</a>
                    </div>
                    <div style="display: flex; flex-direction: column; align-items: center; gap: 6px;">
                        <button onclick="openBackupPanel();" id="btn-backup" class="btn btn-info" title="Backup" aria-label="Backup" style="background: none; border: none; padding: 0;">
                            <img src="modules/servers/solusvm2vps/galeria/actions/backups.png" alt="Backup" style="height:78px;width:78px;vertical-align:text-bottom;" />
                        </button>
                        <a href="javascript:;" onclick="openBackupPanel();" style="font-size: 12px; color: #0a3d91; font-weight: 600; text-decoration: none;">Backup</a>
                    </div>
                    <div style="display: flex; flex-direction: column; align-items: center; gap: 6px;">
                        <button onclick="toggleCharts();" id="btn-charts-toggle" class="btn btn-info" title="Gráficos" aria-label="Gráficos" style="background: none; border: none; padding: 0;">
                            <img src="modules/servers/solusvm2vps/galeria/actions/grafico.png" alt="Gráficos" style="height:78px;width:78px;vertical-align:text-bottom;" />
                        </button>
                        <a href="javascript:;" onclick="toggleCharts();" style="font-size: 12px; color: #0a3d91; font-weight: 600; text-decoration: none;">Gráficos</a>
                    </div>
                    <div style="display: flex; flex-direction: column; align-items: center; gap: 6px;">
                        <button onclick="openVpcNetworkPanel();" id="btn-vpc-network" class="btn btn-info" title="Rede VPC" aria-label="Rede VPC" style="background: none; border: none; padding: 0;">
                            <img src="modules/servers/solusvm2vps/galeria/actions/rede.png" alt="Rede VPC" style="height:78px;width:78px;vertical-align:text-bottom;" />
                        </button>
                        <a href="javascript:;" onclick="openVpcNetworkPanel();" style="font-size: 12px; color: #0a3d91; font-weight: 600; text-decoration: none;">Rede VPC</a>
                    </div>
                    <div style="display: flex; flex-direction: column; align-items: center; gap: 6px;">
                        <button onclick="openIpManagerPanel();" id="btn-ip-manager" class="btn btn-info" title="Gerenciar IPs" aria-label="Gerenciar IPs" style="background: none; border: none; padding: 0;">
                            <img src="modules/servers/solusvm2vps/galeria/actions/gerenciar_ip.png" alt="Gerenciar IPs" style="height:78px;width:78px;vertical-align:text-bottom;" />
                        </button>
                        <a href="javascript:;" onclick="openIpManagerPanel();" style="font-size: 12px; color: #0a3d91; font-weight: 600; text-decoration: none;">Gerenciar IPs</a>
                    </div>
                    <div style="display: flex; flex-direction: column; align-items: center; gap: 6px;">
                        <button onclick="openDisksPanel();" id="btn-disks" class="btn btn-info" title="Discos" aria-label="Discos" style="background: none; border: none; padding: 0;">
                            <img src="modules/servers/solusvm2vps/galeria/actions/hdd.png" alt="Discos" style="height:78px;width:78px;vertical-align:text-bottom;" />
                        </button>
                        <a href="javascript:;" onclick="openDisksPanel();" style="font-size: 12px; color: #0a3d91; font-weight: 600; text-decoration: none;">Discos</a>
                    </div>
                </div>
                <div id="backup-panel" style="display:none; margin-top: 12px; padding: 14px; border-radius: 10px; background: #f4f9ff; border: 1px solid #cfe2ff;">
                    <div id="backup-disabled-message" style="display:none; color:#000;">
                        Esta funcionalidade de backup está desabilitada para este serviço. Entre em contato com a equipe de suporte.
                    </div>
                    <div id="backup-enabled-content" style="display:none;">
                        <div style="display:flex; justify-content:space-between; align-items:center; margin-bottom:10px;">
                            <strong>Backups</strong>
                            <button class="btn btn-primary" onclick="createBackup();">{$LANG.solusvm2vps_button_create_backup|escape:'html'}</button>
                        </div>
                        <table id="tbl_backups" class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Arquivo</th>
                                    <th>{$LANG.solusvm2vps_backups_table_status|escape:'html'}</th>
                                    <th>{$LANG.solusvm2vps_backups_table_message|escape:'html'}</th>
                                    <th>{$LANG.solusvm2vps_button_restore_backup|escape:'html'}</th>
                                    <th>{$LANG.solusvm2vps_backups_action_create_new_vm|escape:'html'}</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>
                    <div style="text-align:right; margin-top:8px;">
                        <button class="btn btn-secondary" onclick="closeBackupPanel();">Fechar</button>
                    </div>
                </div>
                <div id="action-panels" class="action-panels">
                    <div id="action-reinstall" class="action-panel">
                        <div class="action-panel-title">{$LANG.solusvm2vps_button_reinstall|escape:'html'}</div>
                        <div class="action-success">Solcitação concluida com Sucesso!</div>
                        <div class="alert alert-danger" id="vpc-error-msg" style="display:none; margin-bottom: 12px;">
                            Ops! Algo deu errado no seu pedido, entre em contato com Equipe de Suporte
                        </div>
                        <div style="margin-bottom: 12px;">
                            <label style="display: inline-flex; align-items: center; gap: 6px; margin-right: 16px;">
                                <input type="radio" name="reinstall-source" id="reinstall-source-os" value="os" checked />
                                Sistema Operacional
                            </label>
                            <label style="display: inline-flex; align-items: center; gap: 6px;">
                                <input type="radio" name="reinstall-source" id="reinstall-source-application" value="application" />
                                Aplicativo
                            </label>
                        </div>
                        <div id="os-id-block">
                            <p>
                                Sistema Operacional:
                            </p>
                            <p>
                                <select id="fld-os-id" class="form-control" onchange="onChangeOs();">
                                    <option value="0"></option>
                                </select>
                            </p>
                        </div>
                        <div id="application-id-block">
                            <p>
                                Aplicativo:
                            </p>
                            <p>
                                <select id="fld-application-id" class="form-control" onchange="onChangeApplication(this.value);">
                                    <option value="0"></option>
                                </select>
                            </p>
                            <form id="reinstall-form"></form>
                        </div>
                        <div id="integration-monitoring360-block">
                            <p>
                                <input type="checkbox" id="fld-integration-monitoring360" name="integration-monitoring360" value="0" />
                                <label for="fld-integration-monitoring360">Ativar Monitoramento 360</label>
                            </p>
                        </div>
                        <div>
                            <p>
                                <input type="checkbox" id="fld-reset-password" name="reset-password" />
                                <label for="fld-reset-password">Mostrar Nova Senha</label>
                            </p>
                            <p>
                                <input
                                    id="fld-new-password"
                                    type="text"
                                    autocomplete="off"
                                    class="form-control"
                                    value=""
                                    placeholder="Nova senha"
                                    disabled
                                />
                            </p>
                        </div>
                        <div style="display: flex; align-items: center; justify-content: flex-end">
                            <div style="display: flex; align-items: center;">
                                <button
                                    class="btn btn-danger"
                                    onclick="reinstallServerConfirm();"
                                    style="margin-right: 10px"
                                >
                                    {$LANG.solusvm2vps_button_reinstall|escape:'html'}
                                </button>
                                <button class="btn btn-secondary" onclick="hideActionPanels();">
                                    {$LANG.solusvm2vps_button_cancel|escape:'html'}
                                </button>
                            </div>
                        </div>
                    </div>
                    <div id="action-reset-password" class="action-panel">
                        <div class="action-panel-title">{$LANG.solusvm2vps_button_reset_pw|escape:'html'}</div>
                        <div class="action-success">Solcitação concluida com Sucesso!</div>
                        <div class="alert alert-danger" id="vpc-error-msg" style="display:none; margin-bottom: 12px;">
                            Ops! Algo deu errado no seu pedido, entre em contato com Equipe de Suporte
                        </div>
                        <div id="root-password-block">
                            <p>Defina a senha desejada para o usuário root.</p>
                            <input
                                id="newRootPass"
                                type="text"
                                class="form-control"
                                value=""
                                placeholder="Digite a nova senha"
                            />
                            <p style="text-align: right;">
                                <button class="btn btn-primary" onclick="resetPasswordCopy('newRootPass');">
                                    {$LANG.solusvm2vps_password_reset_success_copy_password|escape:'html'}
                                </button>
                                <button class="btn btn-success" onclick="changeRootPasswordConfirm();" style="margin-left: 8px;">
                                    Mudar Senha
                                </button>
                                <button class="btn btn-secondary" onclick="hideActionPanels();">
                                    {$LANG.solusvm2vps_button_close|escape:'html'}
                                </button>
                            </p>
                        </div>
                    </div>
                    <div id="action-hostname" class="action-panel">
                        <div class="action-panel-title">Hostname</div>
                        <div class="action-success">Solcitação concluida com Sucesso!</div>
                        <div class="alert alert-danger" id="vpc-error-msg" style="display:none; margin-bottom: 12px;">
                            Ops! Algo deu errado no seu pedido, entre em contato com Equipe de Suporte
                        </div>
                        <div style="display: flex; flex-wrap: wrap; gap: 10px; align-items: center;">
                            <input
                                id="fld-new-hostname"
                                type="text"
                                class="form-control"
                                style="max-width: 320px;"
                                placeholder="{$LANG.solusvm2vps_new_hostname|escape}"
                            />
                            <button class="btn btn-primary" onclick="changeHostnameConfirm();">
                                Confirmar
                            </button>
                            <button class="btn btn-secondary" onclick="hideActionPanels();">
                                {$LANG.solusvm2vps_button_cancel|escape:'html'}
                            </button>
                        </div>
                    </div>
                    <div id="action-rescue" class="action-panel">
                        <div class="action-panel-title">{$LANG.solusvm2vps_button_rescue_mode|escape:'html'}</div>
                        <div class="action-success">Solcitação concluida com Sucesso!</div>
                        <div class="alert alert-danger" id="vpc-error-msg" style="display:none; margin-bottom: 12px;">
                            Ops! Algo deu errado no seu pedido, entre em contato com Equipe de Suporte
                        </div>
                        <p>
                            Use o modo de resgate para inicializar o servidor com uma imagem ISO de resgate.
                        </p>
                        <div class="rescue-container">
                            <div id="btn-boot-mode-disk" class="boot-mode-button boot-mode-button--pushed" onclick="setBootMode('disk');">
                                <div class="boot-mode-button-image">
                                    <img src="modules/servers/solusvm2vps/img/hdd.png" />
                                </div>
                                <div class="boot-mode-button-title">Iniciar pelo Disco</div>
                                <div class="boot-mode-button-description">Selecione esta opção para iniciar o servidor pelo disco na próxima reinicialização.</div>
                            </div>
                            <div id="btn-boot-mode-rescue" class="boot-mode-button" onclick="setBootMode('rescue');">
                                <div class="boot-mode-button-image">
                                    <img src="modules/servers/solusvm2vps/img/cd.png" />
                                </div>
                                <div class="boot-mode-button-title">Iniciar pelo ISO de Resgate</div>
                                <div class="boot-mode-button-description">Selecione esta opção para iniciar o servidor pelo ISO de resgate na próxima reinicialização.</div>
                            </div>
                        </div>
                        <p>
                            Reinicie o servidor para aplicar a opção de boot selecionada.
                        </p>
                        <p style="text-align: right;">
                            <button class="btn btn-info" onclick="hideActionPanels();">
                                {$LANG.solusvm2vps_button_close|escape:'html'}
                            </button>
                        </p>
                    </div>
                    <div id="action-snapshots" class="action-panel">
                        <div class="action-panel-title">Snapshot</div>
                        <div class="action-success">Solcitação concluida com Sucesso!</div>
                        <div class="alert alert-danger" id="vpc-error-msg" style="display:none; margin-bottom: 12px;">
                            Ops! Algo deu errado no seu pedido, entre em contato com Equipe de Suporte
                        </div>
                        <p style="text-align: right;">
                            <button class="btn btn-primary" onclick="createSnapshot();">
                                {$LANG.solusvm2vps_button_create_snapshot|escape:'html'}
                            </button>
                            <button class="btn btn-secondary" onclick="hideActionPanels();">
                                {$LANG.solusvm2vps_button_close|escape:'html'}
                            </button>
                        </p>
                        <table id="tbl_snapshots_modal" class="table table-striped">
                            <thead>
                                <tr>
                                    <th>{$LANG.solusvm2vps_backups_table_created_at|escape:'html'}</th>
                                    <th>{$LANG.solusvm2vps_backups_table_status|escape:'html'}</th>
                                    <th>{$LANG.solusvm2vps_backups_action_revert|escape:'html'}</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>
                    <div id="action-disks" class="action-panel">
                        <div class="action-panel-title">Discos</div>
                        <div class="action-success">Solicitação concluída com Sucesso!</div>
                        <div style="margin-bottom: 12px; color: #334;">Informações de disco.</div>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Item</th>
                                    <th>Tamanho</th>
                                    <th>Usado</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Disco Principal</td>
                                    <td>{$data['disk_installed']} {$data['disk_unit']}</td>
                                    <td>{if $data['disk_used'] !== null}{$data['disk_used']} {$data['disk_used_unit']|default:'GB'}{else}-{/if}</td>
                                </tr>
                            </tbody>
                        </table>
                        <p style="text-align: right;">
                            <button class="btn btn-secondary" onclick="hideActionPanels();">
                                {$LANG.solusvm2vps_button_close|escape:'html'}
                            </button>
                        </p>
                    </div>
                    <div id="action-vpc" class="action-panel">
                        <div class="action-panel-title">Rede VPC</div>
                        <div class="action-success">Solcitação concluida com Sucesso!</div>
                        <div class="alert alert-danger" id="vpc-error-msg" style="display:none; margin-bottom: 12px;">
                            Ops! Algo deu errado no seu pedido, entre em contato com Equipe de Suporte
                        </div>
                        <div style="margin-bottom: 14px; padding: 10px; border: 1px solid #d9e2f2; border-radius: 8px; background:#f8fbff;">
                            <div style="font-weight: 600; margin-bottom: 8px;">Criar VPC</div>
                            <div style="display:flex; flex-wrap:wrap; gap:8px; align-items:center;">
                                <input id="fld-vpc-name" class="form-control" style="max-width: 220px;" placeholder="vpc-privada-10-10" />
                                <input id="fld-vpc-from" class="form-control" style="max-width: 160px;" placeholder="10.10.0.10" />
                                <input id="fld-vpc-to" class="form-control" style="max-width: 160px;" placeholder="10.10.0.200" />
                                <input id="fld-vpc-netmask" class="form-control" style="max-width: 140px;" placeholder="255.255.255.0" />
                                <button id="btn-create-vpc" class="btn btn-primary" onclick="createVpcNetwork();">Criar VPC</button>
                            </div>
                        </div>
                        <table id="tbl_vpc_networks" class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Nome</th>
                                    <th>Range de IP</th>
                                    <th>IPv4</th>
                                    <th>Máscara</th>
                                    <th>Localização</th>
                                    <th>Ações</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                        <div id="vpc-network-details" style="display:none; margin: 8px 0 12px; padding: 10px; border: 1px solid #d9e2f2; border-radius: 8px; background:#f8fbff;">
                            <div style="font-weight:600; margin-bottom: 8px;">Servidor virtual conectado</div>
                            <div id="vpc-details-servers">Nenhum</div>
                        </div>
                        <p style="text-align: right;">
                            <button class="btn btn-secondary" onclick="hideActionPanels();">
                                {$LANG.solusvm2vps_button_close|escape:'html'}
                            </button>
                        </p>
                    </div>
                    <div id="action-ip-manager" class="action-panel">
                        <div class="action-panel-title">Gerenciar IPs</div>
                        <div class="action-success">A operação foi realizada com sucesso!</div>
                        <div class="alert alert-danger" id="ip-manager-error" style="display: none; margin-bottom: 12px;">
                            Ops! Algo deu errado no seu pedido, entre em contato com Equipe de Suporte
                        </div>
                        <h5>IPv4</h5>
                        <table id="tbl_ipv4" class="table table-striped">
                            <thead>
                                <tr>
                                    <th>IP</th>
                                    <th>DNS Reverso</th>
                                    <th>Primário</th>
                                    <th>Ações</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                        <h5>IPv6</h5>
                        <table id="tbl_ipv6" class="table table-striped">
                            <thead>
                                <tr>
                                    <th>IP</th>
                                    <th>DNS Reverso</th>
                                    <th>Primário</th>
                                    <th>Ações</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                        <p style="color: #b3261e; font-size: 12px;">
                            * As portas para servidor de e-mail são bloqueadas, em caso de duvida entre em contato com Equipe de Suporte para verificar a possibilidade de liberação
                        </p>
                        <p style="text-align: right;">
                            <button class="btn btn-secondary" onclick="hideActionPanels();">
                                {$LANG.solusvm2vps_button_close|escape:'html'}
                            </button>
                        </p>
                    </div>
                </div>
                <div style="margin-top: 16px; padding: 14px; border-radius: 10px; background: linear-gradient(135deg, #e7f1ff 0%, #f4f9ff 100%); border: 1px solid #cfe2ff;">
                    <div style="font-weight: bold; color: #0b5ed7; font-size: 14px; margin-bottom: 10px; display:flex; align-items:center; justify-content:space-between;">
                        <span>Informações do Servidor</span>
                        <span id="server-status" style="display:inline-flex; align-items:center; gap:8px; color:#000; font-weight:600;">
                            <img id="server-status-icon" src="modules/servers/solusvm2vps/galeria/actions/bt_off.png" alt="Status" style="width:34px; height:34px;" />
                            <span id="server-status-text"></span>
                        </span>
                    </div>
                    <div style="display: flex; flex-wrap: wrap; gap: 16px; text-align: left;">
                        <div style="min-width: 160px;">
                            <div style="color: #5c6b8a; font-size: 12px; text-transform: uppercase;">Hostname</div>
                            <div style="font-weight: bold;">{$data['domain']}</div>
                        </div>
                        <div style="min-width: 180px;">
                            <div style="color: #5c6b8a; font-size: 12px; text-transform: uppercase;">IP Principal</div>
                            <div style="font-weight: bold;">{$data['ip']}</div>
                        </div>
                        <div style="min-width: 180px;">
                            <div style="color: #5c6b8a; font-size: 12px; text-transform: uppercase;">Rede VPC</div>
                            <div id="server-vpc-name" style="font-weight: bold;">{if $data['vpc_network_name'] && $data['vpc_network_name'] ne 'Nenhum'}{$data['vpc_network_name']}{else}-{/if}</div>
                        </div>
                        <div style="min-width: 180px;">
                            <div style="color: #5c6b8a; font-size: 12px; text-transform: uppercase;">VPC IP</div>
                            <div id="server-vpc-ip" style="font-weight: bold;">{if $data['vpc_private_ipv4'] && $data['vpc_private_ipv4'] ne 'Nenhum'}{$data['vpc_private_ipv4']}{else}-{/if}</div>
                        </div>
                        {if $data['secondary_ips']}
                            <div style="min-width: 180px;">
                                <div style="color: #5c6b8a; font-size: 12px; text-transform: uppercase;">IPs Secundários</div>
                                <div style="font-weight: bold;">{$data['secondary_ips']}</div>
                            </div>
                        {/if}
                        {if $data['additional_ips']}
                            <div style="min-width: 180px;">
                                <div style="color: #5c6b8a; font-size: 12px; text-transform: uppercase;">IPs Adicionais</div>
                                <div style="font-weight: bold;">{$data['additional_ips']}</div>
                            </div>
                        {/if}
                        {if $data['shared_ip']}
                            <div style="min-width: 180px;">
                                <div style="color: #5c6b8a; font-size: 12px; text-transform: uppercase;">IP Compartilhado</div>
                                <div style="font-weight: bold;">{$data['shared_ip']}</div>
                            </div>
                        {/if}
                        {if $data['ipv6_addresses']}
                            <div style="min-width: 180px;">
                                <div style="color: #5c6b8a; font-size: 12px; text-transform: uppercase;">IPv6</div>
                                <div style="font-weight: bold;">{$data['ipv6_addresses']}</div>
                            </div>
                        {/if}
                        {if $data['additional_ipv6']}
                            <div style="min-width: 180px;">
                                <div style="color: #5c6b8a; font-size: 12px; text-transform: uppercase;">IPv6 Adicionais</div>
                                <div style="font-weight: bold;">{$data['additional_ipv6']}</div>
                            </div>
                        {/if}
                        {if $data['server_ram']}
                            <div style="min-width: 180px;">
                                <div style="color: #5c6b8a; font-size: 12px; text-transform: uppercase;">Memória Ram</div>
                                <div style="font-weight: bold;">{$data['server_ram']} GB</div>
                            </div>
                        {/if}
                        {if $data['disk_installed']}
                            <div style="min-width: 180px;">
                                <div style="color: #5c6b8a; font-size: 12px; text-transform: uppercase;">Disco</div>
                                <div style="font-weight: bold;">{$data['disk_installed']} {$data['disk_unit']}</div>
                            </div>
                        {/if}
                        {if $data['server_os_name'] || $data['installed_system']}
                            <div style="min-width: 180px;">
                                <div style="color: #5c6b8a; font-size: 12px; text-transform: uppercase;">Sistema Operacional</div>
                                <div style="font-weight: bold; display: flex; align-items: center; gap: 8px;">
                                    {if $data['server_os_icon'] || $data['os_image_icon']}
                                        <img src="{$data['server_os_icon']|default:$data['os_image_icon']}" alt="{$data['server_os_name']|default:$data['os_image_name']}" style="height: 20px; width: 20px;" />
                                    {/if}
                                    <span>{$data['server_os_name']|default:$data['os_image_name']|default:$data['installed_system']}</span>
                                </div>
                            </div>
                        {/if}
                        {if $data['server_vcpu']}
                            <div style="min-width: 180px;">
                                <div style="color: #5c6b8a; font-size: 12px; text-transform: uppercase;">vCPU</div>
                                <div style="font-weight: bold;">{$data['server_vcpu']}</div>
                            </div>
                        {/if}
                        {if $data['firmware']}
                            <div style="min-width: 180px;">
                                <div style="color: #5c6b8a; font-size: 12px; text-transform: uppercase;">Firmware</div>
                                <div style="font-weight: bold;">{$data['firmware']}</div>
                            </div>
                        {/if}
                        {if $data['location_name']}
                            <div style="min-width: 180px;">
                                <div style="color: #5c6b8a; font-size: 12px; text-transform: uppercase;">DC Localização</div>
                                <div style="font-weight: bold;">{$data['location_name']}</div>
                            </div>
                        {/if}
                        {if $data['traffic_current']}
                            <div style="min-width: 160px;">
                                <div style="color: #5c6b8a; font-size: 12px; text-transform: uppercase;">Tráfego Atual</div>
                                <div style="font-weight: bold;">
                                    {$data['traffic_current']} {$data['traffic_unit']}
                                    {if $data['traffic_limit']}
                                        / {$data['traffic_limit']} {$data['traffic_unit']}
                                    {/if}
                                </div>
                            </div>
                        {/if}
                    </div>
                </div>
                <div style="margin-top: 16px; padding: 14px; border-radius: 10px; background: linear-gradient(135deg, #e7f1ff 0%, #f4f9ff 100%); border: 1px solid #cfe2ff;">
                    <div style="font-weight: bold; color: #0b5ed7; font-size: 14px; margin-bottom: 10px;">
                        Informações do Plano
                    </div>
                    <div style="display: flex; flex-wrap: wrap; gap: 16px;">
                        {if $data['plan_name']}
                            <div style="min-width: 180px;">
                                <div style="color: #5c6b8a; font-size: 12px; text-transform: uppercase;">Plano</div>
                                <div style="font-weight: bold;">{$data['plan_name']}</div>
                            </div>
                        {/if}
                        <div style="min-width: 180px;">
                            <div style="color: #5c6b8a; font-size: 12px; text-transform: uppercase;">Data do Contrato</div>
                            <div style="font-weight: bold;">{$regdate}</div>
                        </div>
                        <div style="min-width: 180px;">
                            <div style="color: #5c6b8a; font-size: 12px; text-transform: uppercase;">Próximo Vencimento</div>
                            <div style="font-weight: bold;">{$nextduedate}</div>
                        </div>
                        <div style="min-width: 180px;">
                            <div style="color: #5c6b8a; font-size: 12px; text-transform: uppercase;">Valor do Plano</div>
                            <div style="font-weight: bold;">{$recurringamount}</div>
                        </div>
                        <div style="min-width: 180px;">
                            <div style="color: #5c6b8a; font-size: 12px; text-transform: uppercase;">Ciclo de Pagamento</div>
                            <div style="font-weight: bold;">{$billingcycle}</div>
                        </div>
                        <div style="min-width: 180px;">
                            <div style="color: #5c6b8a; font-size: 12px; text-transform: uppercase;">Forma de Pagamento</div>
                            <div style="font-weight: bold;">{$paymentmethod}</div>
                        </div>
                    </div>
                </div>
            </div>
            {if $data['allow_login_to_cloud_panel']}
                <div class="panel-body" style="position: relative">
                    <div id="product-actions">
                        <button onclick="login();" id="btn-login-server" class="btn btn-info">
                            {$LANG.solusvm2vps_button_login|escape:'html'}
                        </button>
                    </div>
                </div>
            {/if}
        </div>
    </div>
</div>

<div id="charts-section" style="display: none;">
<!-- Interval select -->
<div id="intervalSelectContainer" class="row" style="margin-bottom: 20px; display: none;">
    <div class="col-sm-12">
        <select id="intervalSelect" class="form-control" style="width: 180px; margin-left: auto;">
            <option value="3600" selected>{$LANG.solusvm2vps_chart_interval_1h|escape:'html'}</option>
            <option value="21600">{$LANG.solusvm2vps_chart_interval_6h|escape:'html'}</option>
            <option value="86400">{$LANG.solusvm2vps_chart_interval_24h|escape:'html'}</option>
        </select>
    </div>
</div>

<!-- Charts -->
<div class="row" style="display: -webkit-flex; display: flex;">
    <div class="col-sm-12">
        <div class="panel panel-default">
            <div class="panel-body">
                <h4>{$LANG.solusvm2vps_chart_cpu_title|escape:'html'}</h4>
                <canvas id="cpuChart" style="height: 220px; width: 100%;"></canvas>
                <p class="powered-by-360monitoring text-right" style="margin-top: 1rem; display: none;">
                    {$LANG.solusvm2vps_chart_integration_poweredby|escape:'html'} <a href="https://solus.360monitoring.com/?ref=whmcs_solusmvm2vps_graph" target="_blank">
                        {$LANG.solusvm2vps_chart_integration_360monitoring|escape:'html'}
                    </a>
                </p>
            </div>
        </div>
    </div>
</div>

<div id="loadChartContainer" class="row" style="display: none;">
    <div class="col-sm-12">
        <div class="panel panel-default">
            <div class="panel-body">
                <h4>{$LANG.solusvm2vps_chart_load_title|escape:'html'}</h4>
                <canvas id="loadChart" style="height: 260px; max-height: 220px; width: 100%;"></canvas>
                <p class="powered-by-360monitoring text-right" style="margin-top: 1rem; display: none;">
                    {$LANG.solusvm2vps_chart_integration_poweredby|escape:'html'} <a href="https://solus.360monitoring.com/?ref=whmcs_solusmvm2vps_graph" target="_blank">
                        {$LANG.solusvm2vps_chart_integration_360monitoring|escape:'html'}
                    </a>
                </p>
            </div>
        </div>
    </div>
</div>

<div class="row" style="display: -webkit-flex; display: flex;">
    <div class="col-sm-12">
        <div class="panel panel-default">
            <div class="panel-body">
                <h4>{$LANG.solusvm2vps_chart_network_title|escape:'html'}</h4>
                <canvas id="networkChart" style="height: 220px; width: 100%;"></canvas>
                <p class="powered-by-360monitoring text-right" style="margin-top: 1rem; display: none;">
                    {$LANG.solusvm2vps_chart_integration_poweredby|escape:'html'} <a href="https://solus.360monitoring.com/?ref=whmcs_solusmvm2vps_graph" target="_blank">
                        {$LANG.solusvm2vps_chart_integration_360monitoring|escape:'html'}
                    </a>
                </p>
            </div>
        </div>
    </div>
</div>

<div class="row" style="display: -webkit-flex; display: flex;">
    <div class="col-sm-12">
        <div class="panel panel-default">
            <div class="panel-body">
                <h4>{$LANG.solusvm2vps_chart_disk_title|escape:'html'}</h4>
                <canvas id="diskChart" style="height: 220px; width: 100%;"></canvas>
                <p class="powered-by-360monitoring text-right" style="margin-top: 1rem; display: none;">
                    {$LANG.solusvm2vps_chart_integration_poweredby|escape:'html'} <a href="https://solus.360monitoring.com/?ref=whmcs_solusmvm2vps_graph" target="_blank">
                        {$LANG.solusvm2vps_chart_integration_360monitoring|escape:'html'}
                    </a>
                </p>
            </div>
        </div>
    </div>
</div>

<div class="row" style="display: -webkit-flex; display: flex;">
    <div class="col-sm-12">
        <div class="panel panel-default">
            <div class="panel-body">
                <h4>{$LANG.solusvm2vps_chart_memory_title|escape:'html'}</h4>
                <canvas id="memoryChart" style="height: 220px; width: 100%;"></canvas>
                <p class="powered-by-360monitoring text-right" style="margin-top: 1rem; display: none;">
                    {$LANG.solusvm2vps_chart_integration_poweredby|escape:'html'} <a href="https://solus.360monitoring.com/?ref=whmcs_solusmvm2vps_graph" target="_blank">
                        {$LANG.solusvm2vps_chart_integration_360monitoring|escape:'html'}
                    </a>
                </p>
            </div>
        </div>
    </div>
</div>
</div>

{if $suspendreason}
    <div class="row">
        <div class="col-sm-5">
            {$LANG.suspendreason|escape:'html'}
        </div>
        <div class="col-sm-7">
            {$suspendreason}
        </div>
    </div>
{/if}
<div class="row">
    {if $packagesupgrade}
        <div class="col-sm-4">
            <a href="upgrade.php?type=package&amp;id={$id}" class="btn btn-success btn-block">
                {$LANG.upgrade|escape:'html'}
            </a>
        </div>
    {/if}
</div>

<script>
const operatingSystems = {$data['operating_systems']};
const defaultOsId = {$data['default_os_id']};
const applications = {$data['applications']};
const defaultApplicationId = {$data['default_application_id']};

let domain = '{$data['domain']}';
let bootMode = '{$data['boot_mode']}';
const isResetAvailable = '{$data['is_reset_available']}';
const isChangeHostnameAvailable = '{$data['is_change_hostname_available']}';
const isBackupEnabled = '{$data['is_backup_enabled']}';
const isSnapshotEnabled = '{$data['is_snapshot_enabled']}';
const isIntegrationMonitoring360Enabled = '{$data['is_integration_monitoring360_enabled']}';
let isSuspended = {$data['is_suspended']};

const translateStatus = status => {
    switch (status) {
        case 'started':
            return 'Em execução';
        case 'stopped':
            return 'Parado';
        case 'starting':
            return 'Iniciando';
        case 'stopping':
            return 'Parando';
        case 'restarting':
            return 'Reiniciando';
        case 'suspended':
            return 'Suspenso';
        case 'error':
            return 'Erro';
        case 'pending':
            return 'Pendente';
        case 'provisioning':
            return 'Provisionando';
        case 'installing':
            return 'Instalando';
        case 'reinstalling':
            return 'Reinstalando';
        case 'rebuilding':
            return 'Reconstruindo';
        case 'migrating':
            return 'Migrando';
        case 'paused':
            return 'Pausado';
        default:
            return 'Desconhecido';
    }
};

const translateBackupStatus = status => {
    switch (status) {
        case 'created':
            return 'Criado';
        case 'creating':
            return 'Criando';
        case 'failed':
            return 'Falhou';
        case 'error':
            return 'Erro';
        case 'pending':
            return 'Pendente';
        case 'restoring':
            return 'Restaurando';
        case 'queued':
            return 'Na fila';
        default:
            return status;
    }
};

const translateSnapshotStatus = status => {
    switch (status) {
        case 'available':
            return 'Disponível';
        case 'creating':
            return 'Criando';
        case 'failed':
            return 'Falhou';
        default:
            return status;
    }
};

const statusUpdate = (status, service_status) => {
    $('#btn-start-server').prop('disabled', (isSuspended || (status !== 'stopped') || (service_status !== 'Active')));
    $('#btn-stop-server').prop('disabled', (isSuspended || (status !== 'started') || (service_status !== 'Active')));
    $('#btn-power-off-server').prop('disabled', (isSuspended || (status !== 'started') || (service_status !== 'Active')));
    $('#btn-restart-server').prop('disabled', (isSuspended || (status !== 'started') || (service_status !== 'Active')));
    $('#btn-reinstall-server').prop('disabled', (isSuspended || ((status !== 'stopped') && (status !== 'started')) || (service_status !== 'Active')));
    $('#btn-vnc').prop('disabled', (isSuspended || (status !== 'started') || (service_status !== 'Active')));
    $('#btn-reset-pw').prop('disabled', isSuspended || !isResetAvailable || ((status !== 'started') || (service_status !== 'Active')));
    $('#btn-change-hostname').prop('disabled', isSuspended || !isChangeHostnameAvailable || ((status !== 'stopped') && (status !== 'started') || (service_status !== 'Active')));

    if (!isResetAvailable) {
        $('#btn-reset-pw').prop('title', '{$LANG.solusvm2vps_error_guest_tools_missing|escape}');
    }

    if (!isChangeHostnameAvailable) {
        $('#btn-change-hostname').prop('title', '{$LANG.solusvm2vps_error_guest_tools_missing|escape}');
    }

    $('#btn-rescue-mode').prop('disabled', (isSuspended || ((status !== 'stopped') && (status !== 'started')) || (service_status !== 'Active')));

    $('#suspended-alert').prop('hidden', !isSuspended);
}

const randomString = (upperCaseLetters, lowerCaseLetters, numbers, specials) => {
    const chars = [
        /* cspell:disable-next-line */
        'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
        /* cspell:disable-next-line */
        'abcdefghijklmnopqrstuvwxyz',
        '0123456789',
        '!@#$%^&*?_',
    ];

    return [upperCaseLetters, lowerCaseLetters, numbers, specials]
        .map((len, i) => Array(len)
            .fill(chars[i])
            .map(x => x[Math.floor(Math.random() * x.length)])
            .join('')
        )
        .concat()
        .join('')
        .split('')
        .sort(() => 0.5 - Math.random())
        .join('');
};

const setReinstallSource = source => {
    if (source === 'application') {
        $('#reinstall-source-application').prop('checked', true);
        $('#reinstall-source-os').prop('checked', false);
        $('#os-id-block').hide();
        $('#application-id-block').show();
        $('#fld-os-id').val(0);
    } else {
        $('#reinstall-source-os').prop('checked', true);
        $('#reinstall-source-application').prop('checked', false);
        $('#application-id-block').hide();
        $('#os-id-block').show();
        $('#fld-application-id').val(0);
        $('#reinstall-form').html("");
    }
};

$(document).ready(() => {
    $('#fld-reset-password').on('change',(event) => {
        if (event.target.checked) {
            $('#fld-new-password')
                .val(randomString(4, 4, 4, 4))
                .prop('disabled', false);
        } else {
            $('#fld-new-password')
                .val('')
                .prop('disabled', true);
        }
    });
});

const safeTrackVPSEvent = (eventValue, userId) => {
    if (!eventValue || typeof eventValue !== 'string') {
        return;
    }

    if (typeof window.trackVPSEvent !== 'function') {
        return;
    }

    try {
        window.trackVPSEvent(eventValue, userId);
    } catch (error) {
        console.error(error);
    }
};

const updateServerStatusIndicator = status => {
    const translatedStatus = translateStatus(status);
    const isRunning = status === "started";
    $("#server-status-text").text(translatedStatus);
    $("#server-status-icon").attr("src", isRunning
        ? "modules/servers/solusvm2vps/galeria/actions/bt_on.png"
        : "modules/servers/solusvm2vps/galeria/actions/bt_off.png");
};

const checkStatus = () => {
    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            a: "Status"
        }
    }).done(function (response) {
        const result = JSON.parse(response);

        updateServerStatusIndicator(result.status);

        isSuspended = result.is_suspended;

        statusUpdate(result.status, '{$systemStatus}');

        setTimeout(checkStatus, 1000);
    });
}

const openBackupPanel = () => {
    $('#backup-panel').show();
    if (isBackupEnabled) {
        $('#backup-disabled-message').hide();
        $('#backup-enabled-content').show();
        getBackups();
        return;
    }

    $('#backup-enabled-content').hide();
    $('#backup-disabled-message').show();
};

const closeBackupPanel = () => {
    $('#backup-panel').hide();
};

const openVpcNetworkPanel = () => {
    showActionPanel('action-vpc');

    if (vpcNetworksCache.length === 0) {
        loadVpcNetworks();
    }
}

const openIpManagerPanel = () => {
    showActionPanel('action-ip-manager');
    $('#ip-manager-error').hide();
    loadIpAddresses();
}

const openDisksPanel = () => {
    showActionPanel('action-disks');
}

const openSnapshotsDialog = () => {
    if (!isSnapshotEnabled) {
        return;
    }
    getSnapshotsModal();
    showActionPanel('action-snapshots');
}

const toggleCharts = () => {
    $('#charts-section').toggle();
}

const hideActionPanels = () => {
    $('.action-panel').hide();
    $('#action-panels').hide();
}

const showActionPanel = panelId => {
    $('.action-panel').hide();
    $('#action-panels').show();
    const $panel = $('#' + panelId);
    $panel.find('.action-success').hide();
    $panel.find('.action-api-debug').hide();
    $panel.show();
}

const showActionSuccess = (panelId, autoHide = true) => {
    const $panel = $('#' + panelId);
    $panel.find('.action-success').show();
    if (autoHide) {
        setTimeout(() => {
            $panel.find('.action-success').hide();
            hideActionPanels();
        }, 3000);
    }
}

const ensureApiDebugBox = panelId => {
    const $panel = $('#' + panelId);
    if ($panel.length === 0) {
        return null;
    }

    let $box = $panel.find('.action-api-debug');
    if ($box.length === 0) {
        $box = $('<div class="action-api-debug"></div>');
        $panel.prepend($box);
    }

    return $box;
};

const renderApiDebug = (panelId, actionName, payload, isError = false) => {
    const $box = ensureApiDebugBox(panelId);
    if (!$box) {
        return;
    }

    let normalized;
    if (typeof payload === 'string') {
        try {
            normalized = JSON.stringify(JSON.parse(payload), null, 2);
        } catch (e) {
            normalized = payload;
        }
    } else {
        try {
            normalized = JSON.stringify(payload, null, 2);
        } catch (e) {
            normalized = String(payload);
        }
    }

    const header = isError
        ? '[ERRO] Resposta da API para ' + actionName + ':'
        : '[SUCESSO] Resposta da API para ' + actionName + ':';

    $box.text(header + "\n" + normalized);
    $box.css('display', 'block');
    $box.css('border-color', isError ? '#d9534f' : '#5cb85c');
    $box.css('background', isError ? '#fff4f4' : '#f6fff6');
};

const actionPanelByApiAction = {
    Reinstall: 'action-reinstall',
    ResetRootPass: 'action-reset-password',
    ChangeHostName: 'action-hostname',
    RescueMode: 'action-rescue',
    DisableRescueMode: 'action-rescue',
    GetSnapshots: 'action-snapshots',
    CreateSnapshot: 'action-snapshots',
    DeleteSnapshot: 'action-snapshots',
    RevertSnapshot: 'action-snapshots',
    GetVpcNetworks: 'action-vpc',
    AddVpcNetwork: 'action-vpc',
    UpdateVpcNetwork: 'action-vpc',
    DeleteVpcNetwork: 'action-vpc',
    AttachVpcNetwork: 'action-vpc',
    DetachVpcNetwork: 'action-vpc',
    GetIps: 'action-ip-manager',
    AddIp: 'action-ip-manager',
    DeleteIp: 'action-ip-manager',
    SetPrimaryIp: 'action-ip-manager',
    SetRDNS: 'action-ip-manager',
    ManageDisks: 'action-disks',
};

const extractActionName = rawData => {
    if (!rawData) {
        return null;
    }

    const params = typeof rawData === 'string' ? new URLSearchParams(rawData) : new URLSearchParams(rawData);
    return params.get('a');
};

$(document).ajaxComplete(function (_event, xhr, settings) {
    if (!settings || !settings.url || settings.url.indexOf('clientarea.php?action=productdetails') === -1) {
        return;
    }

    const actionName = extractActionName(settings.data);
    if (!actionName || !actionPanelByApiAction[actionName]) {
        return;
    }

    const panelId = actionPanelByApiAction[actionName];
    renderApiDebug(panelId, actionName, xhr.responseText, xhr.status >= 400);
});

$(document).ajaxError(function (_event, _jqxhr, settings, thrownError) {
    if (!settings || !settings.url || settings.url.indexOf('clientarea.php?action=productdetails') === -1) {
        return;
    }

    const actionName = extractActionName(settings.data);
    if (!actionName || !actionPanelByApiAction[actionName]) {
        return;
    }

    const panelId = actionPanelByApiAction[actionName];
    const errorPayload = {
        message: thrownError || 'Erro desconhecido',
        url: settings.url,
        data: settings.data || null,
    };

    renderApiDebug(panelId, actionName, errorPayload, true);
});

const startServer = () => {
    safeTrackVPSEvent(ANALYTICS_EVENTS?.USER?.SERVER_ACTIONS?.START_BUTTON_CLICKED, '{$data.mixpanel_user_id}');
    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            a: "Start"
        }
    });
}

const stopServer = () => {
    safeTrackVPSEvent(ANALYTICS_EVENTS?.USER?.SERVER_ACTIONS?.STOP_BUTTON_CLICKED, '{$data.mixpanel_user_id}');
    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            a: "Stop"
        }
    });
}

const powerOffServer = () => {
    safeTrackVPSEvent(ANALYTICS_EVENTS?.USER?.SERVER_ACTIONS?.POWEROFF_BUTTON_CLICKED, '{$data.mixpanel_user_id}');
    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            a: "PowerOff"
        }
    });
}

const restartServer = () => {
    safeTrackVPSEvent(ANALYTICS_EVENTS?.USER?.SERVER_ACTIONS?.RESTART_BUTTON_CLICKED, '{$data.mixpanel_user_id}');
    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            a: "Restart"
        }
    });
}

const onChangeOs = () => {
    safeTrackVPSEvent(ANALYTICS_EVENTS?.USER?.SETTINGS?.CHANGE_OS_CLICKED, '{$data.mixpanel_user_id}');
    let $select = $('#fld-application-id');
    $select.val(0);
    $('#reinstall-form').html("");
    setReinstallSource('os');
}

const onChangeApplication = (value) => {
    safeTrackVPSEvent(ANALYTICS_EVENTS?.USER?.SETTINGS?.CHANGE_APPLICATION_CLICKED, '{$data.mixpanel_user_id}');
    let $select = $('#fld-os-id');
    $select.val(0);
    setReinstallSource('application');

    if (applications[value] !== undefined) {
        $('#reinstall-form').html("").jsonForm({
            schema: applications[value]['schema'],
            form: ["*"],
        });
    }
}

const reinstallServer = () => {
    safeTrackVPSEvent(ANALYTICS_EVENTS?.USER?.SERVER_ACTIONS?.REINSTALL_BUTTON_CLICKED, '{$data.mixpanel_user_id}');
    if (Object.keys(operatingSystems).length > 0) {
        $('#reinstall-form').html("");
        let $select = $('#fld-os-id');

        $select.empty();

        for (const [id, name] of Object.entries(operatingSystems)) {
            $select.append($('<option>', {
                value: id,
                text: name
            }));
        }

        $select.val(defaultOsId);
    } else {
        $('#os-id-block').hide();
    }

    if (Object.keys(applications).length > 0) {
        let $select = $('#fld-application-id');

        $select.empty();

        for (const [id, application] of Object.entries(applications)) {
            $select.append($('<option>', {
                value: id,
                text: application['name']
            }));
        }

        if (Object.keys(operatingSystems).length === 0 || defaultOsId === 0) {
            $select.val(defaultApplicationId);
            if (defaultApplicationId > 0) {
                onChangeApplication(defaultApplicationId);
            }
        } else {
            $select.val(0);
        }
    } else {
        $('#application-id-block').hide();
    }

    if(!isIntegrationMonitoring360Enabled) {
        $('#integration-monitoring360-block').hide();
    }

    if (Object.keys(applications).length === 0) {
        $('#reinstall-source-application').prop('disabled', true);
        setReinstallSource('os');
    } else if (Object.keys(operatingSystems).length === 0) {
        $('#reinstall-source-os').prop('disabled', true);
        setReinstallSource('application');
    } else {
        setReinstallSource('os');
    }

    $('input[name="reinstall-source"]').off('change').on('change', function () {
        setReinstallSource(this.value);
    });

    showActionPanel('action-reinstall');
}

const reinstallServerContinue = (osId, applicationId = 0, applicationData = null, integrationMonitoring360 = false, password = '') => {
    safeTrackVPSEvent(ANALYTICS_EVENTS?.USER?.SERVER_ACTIONS?.REINSTALL_CONTINUE_CLICKED, '{$data.mixpanel_user_id}');
    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            a: "Reinstall",
            osId: osId,
            applicationId: applicationId,
            applicationData: applicationData,
            integrationMonitoring360: +integrationMonitoring360,
            password: password,
        }
    }).done(function () {
        showActionSuccess('action-reinstall');
    });
}

const reinstallServerConfirm = () => {
    safeTrackVPSEvent(ANALYTICS_EVENTS?.USER?.SERVER_ACTIONS?.REINSTALL_CONFIRM_CLICKED, '{$data.mixpanel_user_id}');
    const source = $('input[name="reinstall-source"]:checked').val();
    const osId = source === 'os' ? ($('#fld-os-id').val() || defaultOsId) : 0;
    const applicationId = source === 'application' ? ($('#fld-application-id').val() || 0) : 0;

    const integrationMonitoring360 = $('#fld-integration-monitoring360').is(':checked');

    const form = $('#reinstall-form');
    let applicationData = new Object();

    if(applicationId > 0 && $(form).valid()) {
        form.serializeArray().map(field => applicationData[field.name] = field.value);
    }

    const resetPassword = $('#fld-reset-password').is(':checked');
    const newPassword = $('#fld-new-password').val();

    if (resetPassword && !newPassword) {
        alert('{$LANG.solusvm2vps_reinstall_empty_password_error_message|escape}');
        return;
    }

    if (!window.confirm('ATENÇÃO! Tenha CUIDADO ao reistalar sua maquina virtual, isto apagará todos os dados existentes, está operação é irreversivel')) {
        return;
    }

    reinstallServerContinue(osId, applicationId, applicationData, integrationMonitoring360, newPassword);
}

const reinstallServerCancel = () => {
    safeTrackVPSEvent(ANALYTICS_EVENTS?.USER?.SERVER_ACTIONS?.REINSTALL_CANCEL_CLICKED, '{$data.mixpanel_user_id}');
    hideActionPanels();
}

const openVncDialog = () => {
    safeTrackVPSEvent(ANALYTICS_EVENTS?.USER?.VNC?.OPEN_DIALOG_CLICKED, '{$data.mixpanel_user_id}');
    const width = 800;
    const height = 450;
    const top = (screen.height / 2) - (height / 2);
    const left = (screen.width / 2) - (width / 2);
    const url = 'clientarea.php?action=productdetails&id={$serviceid}&a=VNC';
    const features = "menubar=no,location=no,resizable=yes,scrollbars=yes,status=no,width=" + width + ",height=" + height + ",top=" + top + ",left=" + left;

    window.open(url, '', features);
}

const resetPassword = () => {
    safeTrackVPSEvent(ANALYTICS_EVENTS?.USER?.SETTINGS?.PASSWORD_RESET_CLICKED, '{$data.mixpanel_user_id}');
    showActionPanel('action-reset-password');
    $('#newRootPass').val(randomString(4, 4, 4, 4));
}

const resetPasswordCopy = (elemId) => {
    safeTrackVPSEvent(ANALYTICS_EVENTS?.USER?.SETTINGS?.PASSWORD_RESET_COPY_CLICKED, '{$data.mixpanel_user_id}');
    var text = document.getElementById(elemId).value.replace( /&amp;/g, "&" );
    navigator.clipboard.writeText(text);
}

const changeRootPasswordConfirm = () => {
    const password = $('#newRootPass').val();

    if (!password) {
        alert('Informe uma senha para continuar.');
        return;
    }

    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            a: "ResetRootPass",
            password: password
        }
    }).done(function () {
        showActionSuccess('action-reset-password', false);
    });
}

const changeHostname = () => {
    safeTrackVPSEvent(ANALYTICS_EVENTS?.USER?.SETTINGS?.HOSTNAME_CHANGE_CLICKED, '{$data.mixpanel_user_id}');
    showActionPanel('action-hostname');
    $('#fld-new-hostname').val(domain).focus();
}

const changeHostnameConfirm = () => {
    const hostname = $('#fld-new-hostname').val();

    if ((hostname === null) || (hostname === '') || (hostname === domain)) {
        return;
    }

    if (!confirm('{$LANG.solusvm2vps_confirm_change_hostname|escape}')) {
        return;
    }

    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            hostname: hostname,
            a: "ChangeHostName"
        },
        success: function (response) {
            domain = hostname;

            restartServer();

            alert(response);
            showActionSuccess('action-hostname');
        }
    });
}

const rescueMode = () => {
    safeTrackVPSEvent(ANALYTICS_EVENTS?.USER?.SETTINGS?.RESCUE_MODE_CLICKED, '{$data.mixpanel_user_id}');
    updateBootMode();

    showActionPanel('action-rescue');
}

const rescueModeClose = () => {
    safeTrackVPSEvent(ANALYTICS_EVENTS?.USER?.SETTINGS?.RESCUE_MODE_CLOSE_CLICKED, '{$data.mixpanel_user_id}');
    hideActionPanels();
}

const updateBootMode = () => {
    $('.boot-mode-button').removeClass('boot-mode-button--pushed');

    if (bootMode === 'disk') {
        $('#btn-boot-mode-disk').addClass('boot-mode-button--pushed');
    } else {
        $('#btn-boot-mode-rescue').addClass('boot-mode-button--pushed');
    }
}

const setBootMode = mode => {
    safeTrackVPSEvent(ANALYTICS_EVENTS?.USER?.SETTINGS?.SET_BOOT_MODE_CLICKED, '{$data.mixpanel_user_id}');
    if (bootMode === mode) {
        return;
    }

    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            bootMode: mode,
            a: "ChangeBootMode"
        }
    }).done(function () {
        showActionSuccess('action-rescue');
    });

    bootMode = mode;

    updateBootMode();
}

const getBackups = () => {
    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            a: "GetBackups"
        },
        dataType: 'json'
    }).done(function (backups) {
        let $tbody = $("#tbl_backups > tbody");

        $tbody.empty();

        backups.forEach(function (backup) {
            let restore = '';
            let restoreToNewVm = '';

            if (backup.status === 'created') {
                restore = '<a href="javascript:;" onclick="restoreBackup(' + backup.id + ');">{$LANG.solusvm2vps_button_restore_backup|escape}</a>';
                restoreToNewVm = '<a href="javascript:;" onclick="restoreBackupToNewVm(' + backup.id + ');">{$LANG.solusvm2vps_backups_action_create_new_vm|escape}</a>';
            }

            let html = '<tr>';
            html += '<td>' + backup.time + '</td>';
            html += '<td>' + translateBackupStatus(backup.status) + '</td>';
            html += '<td>' + backup.message + '</td>';
            html += '<td>' + restore + '</td>';
            html += '<td>' + restoreToNewVm + '</td>';
            html += '</tr>';

            $tbody.append(html);
        });

        if ($('#backup-panel').is(':visible') && isBackupEnabled) {
            setTimeout(getBackups, 3000);
        }
    });
}

const createBackup = () => {
    safeTrackVPSEvent(ANALYTICS_EVENTS?.USER?.BACKUP?.CREATE_BACKUP_CLICKED, '{$data.mixpanel_user_id}');
    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            a: "CreateBackup"
        }
    });
}

const restoreBackup = backupId => {
    safeTrackVPSEvent(ANALYTICS_EVENTS?.USER?.BACKUP?.RESTORE_BACKUP_CLICKED, '{$data.mixpanel_user_id}');
    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            a: "RestoreBackup",
            backupId: backupId
        }
    });
}

const restoreBackupToNewVm = backupId => {
    safeTrackVPSEvent(ANALYTICS_EVENTS?.USER?.BACKUP?.RESTORE_TO_NEW_SERVER, '{$data.mixpanel_user_id}');
    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            a: "RestoreBackupToNewVm",
            backupId: backupId
        },
        dataType: 'json'
    }).done(function (response) {
        if (response && response.status === 'success' && response.link_to_add_new_server) {
            window.location.href = response.link_to_add_new_server;
            return;
        }

        const message = (response && response.message)
            ? response.message
            : '{$LANG.solusvm2vps_restore_backup_to_new_vm_generic_error|escape}';

        alert(message);
    }).fail(function () {
        alert('{$LANG.solusvm2vps_restore_backup_to_new_vm_generic_error|escape}');
    });
}

const getSnapshots = () => {
    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            a: "GetSnapshots"
        },
        dataType: 'json'
    }).done(function (snapshots) {
        let $tbody = $("#tbl_snapshots > tbody");

        $tbody.empty();

        snapshots.forEach(function (snapshot) {
            let revert = '';

            if (snapshot.status === 'available') {
                revert = '<a href="javascript:;" onclick="revertSnapshot(' + snapshot.id + ');">{$LANG.solusvm2vps_button_revert_snapshot|escape}</a>';
            }

            let html = '<tr>';
            html += '<td>' + snapshot.created_at + '</td>';
            html += '<td>' + translateSnapshotStatus(snapshot.status) + '</td>';
            html += '<td>' + revert + '</td>';
            html += '</tr>';

            $tbody.append(html);
        });

        setTimeout(getSnapshots, 3000);
    });
}

const getSnapshotsModal = () => {
    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            a: "GetSnapshots"
        },
        dataType: 'json'
    }).done(function (snapshots) {
        let $tbody = $("#tbl_snapshots_modal > tbody");

        $tbody.empty();

        snapshots.forEach(function (snapshot) {
            let revert = '';

            if (snapshot.status === 'available') {
                revert = '<a href="javascript:;" onclick="revertSnapshot(' + snapshot.id + ');">{$LANG.solusvm2vps_button_revert_snapshot|escape}</a>';
            }

            let html = '<tr>';
            html += '<td>' + snapshot.created_at + '</td>';
            html += '<td>' + translateSnapshotStatus(snapshot.status) + '</td>';
            html += '<td>' + revert + '</td>';
            html += '</tr>';

            $tbody.append(html);
        });
    });
}

const createSnapshot = () => {
    safeTrackVPSEvent(ANALYTICS_EVENTS?.USER?.SNAPSHOTS?.CREATE_SNAPSHOT_CLICKED, '{$data.mixpanel_user_id}');
    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            a: "CreateSnapshot"
        }
    }).done(function () {
        showActionSuccess('action-snapshots');
    });
}

const revertSnapshot = snapshotId => {
    safeTrackVPSEvent(ANALYTICS_EVENTS?.USER?.SNAPSHOTS?.REVERT_SNAPSHOT_CLICKED, '{$data.mixpanel_user_id}');
    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            a: "RevertSnapshot",
            snapshotId: snapshotId
        }
    }).done(function () {
        showActionSuccess('action-snapshots');
    });
}

const areSnapshotsEnabled = () => {
    if (isSnapshotEnabled) {
        getSnapshots();
    } else {
        $('#btn-create-snapshot').hide();
        $('#btn-snapshots').hide();
    }
}

let vpcNetworksCache = [];
let hasPreloadedVpcNetworks = false;

const loadVpcNetworks = () => {
    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            a: "GetVpcNetworks"
        },
        dataType: 'json'
    }).done(function (networks) {
        vpcNetworksCache = Array.isArray(networks) ? networks : [];
        let $tbody = $("#tbl_vpc_networks > tbody");
        $tbody.empty();
        $('#vpc-network-details').hide();

        const initialServerVpcNameRaw = String($('#server-vpc-name').text() || '-').trim();
        const initialServerVpcIpRaw = String($('#server-vpc-ip').text() || '-').trim();
        const initialServerVpcName = initialServerVpcNameRaw !== '' && initialServerVpcNameRaw.toLowerCase() !== 'nenhum' ? initialServerVpcNameRaw : '-';
        const initialServerVpcIp = initialServerVpcIpRaw !== '' && initialServerVpcIpRaw.toLowerCase() !== 'nenhum' ? initialServerVpcIpRaw : '-';

        if (!Array.isArray(networks) || networks.length === 0) {
            $tbody.append('<tr><td colspan="6" class="text-center text-muted">Nenhuma rede VPC encontrada.</td></tr>');
            $('#server-vpc-name').text(initialServerVpcName);
            $('#server-vpc-ip').text(initialServerVpcIp);
            return;
        }
        let attachedNetworkName = initialServerVpcName;
        let attachedNetworkIpv4 = initialServerVpcIp;
        const currentServerHostname = '{$data['domain']|escape:'javascript'}';
        const currentServerPrimaryIp = '{$data['ip']|escape:'javascript'}';

        const isNetworkAttached = network => {
            const status = String(network.status || '').toLowerCase();
            if (status === 'anexa' || status === 'anexada' || status === 'attached') {
                return true;
            }
            if (status === 'desanexa' || status === 'detached') {
                return false;
            }

            return !!network.is_attached;
        };

        const isCurrentServerInNetwork = network => {
            const connectedServers = Array.isArray(network.connected_servers) ? network.connected_servers : [];
            const normalizedHostname = String(currentServerHostname || '').trim().toLowerCase();
            const normalizedPrimaryIp = String(currentServerPrimaryIp || '').trim();

            return connectedServers.some(server => {
                const hostname = String(server.hostname || '').trim().toLowerCase();
                const ip = String(server.ip || '').trim();
                return (normalizedHostname !== '' && hostname !== '' && hostname === normalizedHostname)
                    || (normalizedPrimaryIp !== '' && ip !== '' && ip === normalizedPrimaryIp);
            });
        };

        networks.forEach(function (network, index) {
            const id = network.id || '';
            const range = network.cidr || '';
            const name = network.name || '';
            const ipv4 = network.ipv4 || '';
            const netmask = network.netmask || '';
            const location = network.location || '-';
            const isAttached = isNetworkAttached(network);
            const isCurrentServerConnected = isCurrentServerInNetwork(network);
            if ((isAttached || isCurrentServerConnected) && attachedNetworkName === initialServerVpcName) {
                attachedNetworkName = name || attachedNetworkName || '-';
                attachedNetworkIpv4 = ipv4 || attachedNetworkIpv4 || '-';
            }

            if (index === 0 && attachedNetworkName === initialServerVpcName) {
                attachedNetworkName = name || attachedNetworkName || '-';
                attachedNetworkIpv4 = ipv4 || attachedNetworkIpv4 || '-';
            }

            let html = '<tr>';
            html += '<td><a href="javascript:;" class="js-vpc-details-link" data-index="' + index + '">' + name + '</a></td>';
            html += '<td><a href="javascript:;" class="js-vpc-details-link" data-index="' + index + '">' + range + '</a></td>';
            html += '<td>' + ipv4 + '</td>';
            html += '<td>' + netmask + '</td>';
            html += '<td>' + location + '</td>';
            html += '<td>';
            if (isAttached) {
                html += '<span style="color:#666; cursor:not-allowed;">Anexado</span>';
                html += ' | ';
                html += '<a href="javascript:;" onclick="detachVpcNetwork(' + id + ');">Desanexar VPC</a>';
            } else {
                html += '<a href="javascript:;" onclick="attachVpcNetwork(' + id + ');">Anexar VPC</a>';
                html += ' | ';
                html += '<span style="color:#666; cursor:not-allowed;">Desanexado</span>';
            }
            html += '</td>';
            html += '</tr>';

            $tbody.append(html);
        });

        $('#server-vpc-name').text(attachedNetworkName);
        $('#server-vpc-ip').text(attachedNetworkIpv4);

        if (String($('#server-vpc-name').text() || '').trim().toLowerCase() === 'nenhum') {
            $('#server-vpc-name').text('-');
        }

        if (String($('#server-vpc-ip').text() || '').trim().toLowerCase() === 'nenhum') {
            $('#server-vpc-ip').text('-');
        }
    }).fail(function () {
        vpcNetworksCache = [];
        $('#vpc-error-msg').show();
    });
}

const preloadVpcNetworks = () => {
    if (hasPreloadedVpcNetworks) {
        return;
    }

    hasPreloadedVpcNetworks = true;
    loadVpcNetworks();
}

let activeVpcDetailsIndex = null;
const toggleVpcNetworkDetails = index => {
    if (activeVpcDetailsIndex === index) {
        activeVpcDetailsIndex = null;
        $('#vpc-network-details').hide();
        return;
    }

    activeVpcDetailsIndex = index;

    const selectedNetwork = vpcNetworksCache[index] || {};
    const servers = Array.isArray(selectedNetwork.connected_servers) ? selectedNetwork.connected_servers : [];

    const selectedNetworkName = String(selectedNetwork.name || '').trim();
    const selectedNetworkIpv4 = String(selectedNetwork.ipv4 || '').trim();
    $('#server-vpc-name').text(selectedNetworkName !== '' && selectedNetworkName.toLowerCase() !== 'nenhum' ? selectedNetworkName : '-');
    $('#server-vpc-ip').text(selectedNetworkIpv4 !== '' && selectedNetworkIpv4.toLowerCase() !== 'nenhum' ? selectedNetworkIpv4 : '-');

    const $container = $('#vpc-details-servers');
    if (!Array.isArray(servers) || servers.length === 0) {
        const fallbackHostname = String(selectedNetwork.connected_hostname || '').trim();
        const fallbackIp = String(selectedNetwork.connected_ip || '').trim();

        if (fallbackHostname !== '' || fallbackIp !== '') {
            const hostnameValue = fallbackHostname !== '' && fallbackHostname.toLowerCase() !== 'nenhum' ? fallbackHostname : '-';
            const ipValue = fallbackIp !== '' && fallbackIp.toLowerCase() !== 'nenhum' ? fallbackIp : '-';
                        const fallbackPrivateIpv4Raw = String($('#server-vpc-ip').text() || '').trim();
            const fallbackPrivateIpv4Value = fallbackPrivateIpv4Raw !== '' && fallbackPrivateIpv4Raw.toLowerCase() !== 'nenhum' ? fallbackPrivateIpv4Raw : '-';
            $container.html('<ul style="margin:0; padding-left:18px;"><li><strong>Hostname:</strong> ' + hostnameValue + ' | <strong>IP:</strong> ' + ipValue + ' | <strong>IPv4 Privado:</strong> ' + fallbackPrivateIpv4Value + '</li></ul>');
        } else {
            $container.html('-');
        }
    } else {
        let html = '<ul style="margin:0; padding-left:18px;">';
        servers.forEach(function (server) {
            const hostname = String(server.hostname || '').trim();
            const ip = String(server.ip || '').trim();
            const privateIpv4 = String(server.private_ipv4 || '').trim();
            const hostnameValue = hostname !== '' && hostname.toLowerCase() !== 'nenhum' ? hostname : '-';
            const ipValue = ip !== '' && ip.toLowerCase() !== 'nenhum' ? ip : '-';
            const privateIpv4Value = privateIpv4 !== '' && privateIpv4.toLowerCase() !== 'nenhum' ? privateIpv4 : '-';
            html += '<li><strong>Hostname:</strong> ' + hostnameValue + ' | <strong>IP:</strong> ' + ipValue + ' | <strong>IPv4 Privado:</strong> ' + privateIpv4Value + '</li>';
        });
        html += '</ul>';
        $container.html(html);
    }

    $('#vpc-network-details').show();
}

$(document).on('click', '.js-vpc-details-link', function () {
    const index = Number($(this).data('index'));
    if (Number.isNaN(index)) {
        return;
    }

    toggleVpcNetworkDetails(index);
});

const attachVpcNetwork = networkId => {
    if (!networkId) {
        $('#vpc-error-msg').show();
        return;
    }

    $('#vpc-error-msg').hide();
    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            a: 'AttachVpcNetwork',
            networkId: networkId
        },
        dataType: 'json'
    }).done(function (response) {
        if (response && (response.status === 'error' || response.success === false)) {
            $('#vpc-error-msg').show();
            return;
        }
        showActionSuccess('action-vpc');
        loadVpcNetworks();
    }).fail(function () {
        $('#vpc-error-msg').show();
    });
}

const detachVpcNetwork = networkId => {
    if (!networkId) {
        $('#vpc-error-msg').show();
        return;
    }

    $('#vpc-error-msg').hide();
    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            a: 'DetachVpcNetwork',
            networkId: networkId
        },
        dataType: 'json'
    }).done(function (response) {
        if (response && (response.status === 'error' || response.success === false)) {
            $('#vpc-error-msg').show();
            return;
        }
        showActionSuccess('action-vpc');
        loadVpcNetworks();
    }).fail(function () {
        $('#vpc-error-msg').show();
    });
}

const createVpcNetwork = () => {
    const name = $('#fld-vpc-name').val();
    const from = $('#fld-vpc-from').val();
    const to = $('#fld-vpc-to').val();
    const netmask = $('#fld-vpc-netmask').val();
    const $btn = $('#btn-create-vpc');

    if (!name || !from || !to || !netmask) {
        $('#vpc-error-msg').show();
        return;
    }

    const originalText = $btn.text();
    $btn.text('Criando..').prop('disabled', true).css('pointer-events', 'none');
    $('#vpc-error-msg').hide();

    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            a: 'AddVpcNetwork',
            name: name,
            list_type: 'range',
            from: from,
            to: to,
            netmask: netmask
        },
        dataType: 'json'
    }).done(function (response) {
        if (response && (response.status === 'error' || response.success === false)) {
            $('#vpc-error-msg').show();
            return;
        }
        showActionSuccess('action-vpc');
        loadVpcNetworks();
    }).fail(function () {
        $('#vpc-error-msg').show();
    }).always(function () {
        $btn.text(originalText).prop('disabled', false).css('pointer-events', 'auto');
    });
}

const loadIpAddresses = () => {
    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            a: "GetIps"
        },
        dataType: 'json'
    }).done(function (response) {
        const ipv4 = response.ipv4 || [];
        const ipv6 = response.ipv6 || [];

        renderIpTable('#tbl_ipv4', ipv4);
        renderIpTable('#tbl_ipv6', ipv6);
    }).fail(function () {
        showIpManagerError();
    });
}

const renderIpTable = (selector, ips) => {
    const $tbody = $(selector + ' > tbody');
    $tbody.empty();

    ips.forEach(function (ip) {
        const id = ip.id || ip.ip_id || ip.ip_address_id || '';
        const address = ip.ip || ip.primary_ip || '';
        const rdns = ip.ptr || ip.rdns || '';
        const isPrimary = ip.is_primary ? 'Sim' : 'Não';
        const gateway = ip.gateway || '';
        const netmask = ip.netmask || ip.netmask_cidr || '';

        const safeId = String(id).replace(/'/g, "\\'");
        const safeAddress = String(address).replace(/'/g, "\\'");

        let html = '<tr>';
        html += '<td>' + address + '</td>';
        html += '<td>' + rdns + '</td>';
        html += '<td>' + isPrimary + '</td>';
        html += '<td>';
        if (id) {
            html += '<a href="javascript:;" onclick="setPrimaryIp(\'' + safeId + '\', \'' + safeAddress + '\', this); return false;">Definir Primário</a> | ';
            html += '<a href="javascript:;" onclick="toggleIpDetails(\'' + safeId + '\');">Ver Detalhes</a>';
        } else {
            html += '<span style="color:#999;">Sem ações</span>';
        }
        html += '</td>';
        html += '</tr>';
        html += '<tr id="ip-details-' + safeId + '" style="display: none;">';
        html += '<td colspan="4">';
        html += '<strong>Gateway:</strong> ' + gateway + ' | ';
        html += '<strong>Máscara de Rede:</strong> ' + netmask;
        html += '</td>';
        html += '</tr>';

        $tbody.append(html);
    });
}

const toggleIpDetails = ipId => {
    const normalizedId = String(ipId || '').replace(/'/g, "\\'");
    const $row = $('#ip-details-' + normalizedId);
    $row.toggle();
}

const setPrimaryIp = (ipId, ipAddress = "", triggerEl = null) => {
    if (!ipId) {
        showIpManagerError();
        return;
    }

    const $trigger = triggerEl ? $(triggerEl) : null;
    const originalText = $trigger ? $trigger.text() : null;
    if ($trigger) {
        $trigger.text('Processando...');
        $trigger.css('pointer-events', 'none');
        $trigger.css('opacity', '0.6');
    }

    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            a: "SetPrimaryIp",
            ipId: ipId,
            ipAddress: ipAddress
        },
        dataType: 'json'
    }).done(function (response) {
        if (response && (response.status === 'error' || response.success === false)) {
            showIpManagerError(response.message || null);
            return;
        }
        showIpManagerSuccess();
        setTimeout(loadIpAddresses, 1200);
    }).fail(function () {
        showIpManagerError();
    }).always(function () {
        if ($trigger) {
            $trigger.text(originalText || 'Definir Primário');
            $trigger.css('pointer-events', '');
            $trigger.css('opacity', '');
        }
    });
}

const showIpManagerSuccess = () => {
    showActionSuccess('action-ip-manager', false);
    $('#ip-manager-error').hide();
}

const showIpManagerError = (message = null) => {
    if (message) {
        $('#ip-manager-error').text(message);
    }
    $('#ip-manager-error').show();
}

const login = () => {
    safeTrackVPSEvent(ANALYTICS_EVENTS?.USER?.LOGIN?.BUTTON_CLICKED, '{$data.mixpanel_user_id}');
    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            a: "Login"
        },
        complete: function (xhr) {
            if (xhr.status === 200 && xhr.responseText.startsWith('http')) {
                window.open(xhr.responseText, '_blank').focus();
            } else {
                confirm("Unable to login\n\n" + "Please, contact support team.");
            }
        }
    });
};


const getUsage = () => {
    $.get({
        url: 'clientarea.php?action=productdetails',
        data: {
            id: {$serviceid},
            a: "Usage",
            interval: $('#intervalSelect').val(),
        },
        dataType: 'json'
    }).done(function (usage) {
        const now = new Date();
        const interval = parseInt($('#intervalSelect').val());
        const from = new Date(now - interval * 1000);

        if (usage.is_integration_360monitoring) {
            $('.powered-by-360monitoring').show();
            $('#intervalSelectContainer').show();
        } else {
            $('.powered-by-360monitoring').hide();
            $('#intervalSelectContainer').hide();
        }

        cpuChartData.labels = [];
        cpuChartData.datasets[0].data = [];

        usage.cpu.forEach(item => {
            cpuChartData.labels.push(item.second);
            cpuChartData.datasets[0].data.push(item.load_average);
        });

        if (usage.is_integration_360monitoring) {
            cpuChart.options.scales.xAxes[0].type = 'time';
            cpuChart.options.scales.xAxes[0].time.min = from;
            cpuChart.options.scales.xAxes[0].time.max = Math.max(now, cpuChartData.labels[cpuChartData.labels.length - 1]);
        } else {
            cpuChart.options.scales.xAxes[0].type = undefined;
            cpuChart.options.scales.xAxes[0].time.min = undefined;
            cpuChart.options.scales.xAxes[0].time.max = undefined;
        }

        cpuChart.update();

        if (usage.load_average) {
            $('#loadChartContainer').css('display', 'flex');

            loadChartData.labels = [];
            loadChartData.datasets[0].data = [];
            loadChartData.datasets[1].data = [];
            loadChartData.datasets[2].data = [];

            usage.load_average.forEach(item => {
                loadChartData.labels.push(item.second);
                loadChartData.datasets[0].data.push(item['1']);
                loadChartData.datasets[1].data.push(item['5']);
                loadChartData.datasets[2].data.push(item['15']);
            });

            if (usage.is_integration_360monitoring) {
                loadChart.options.scales.xAxes[0].type = 'time';
                loadChart.options.scales.xAxes[0].time.min = from;
                loadChart.options.scales.xAxes[0].time.max = Math.max(now, loadChartData.labels[loadChartData.labels.length - 1]);
            } else {
                loadChart.options.scales.xAxes[0].type = undefined;
                loadChart.options.scales.xAxes[0].time.min = undefined;
                loadChart.options.scales.xAxes[0].time.max = undefined;
            }

            loadChart.update();
        } else {
            $('#loadChartContainer').hide();
        }

        networkChartData.labels = [];
        networkChartData.datasets[0].data = [];
        networkChartData.datasets[1].data = [];

        usage.network.forEach(item => {
            networkChartData.labels.push(item.second);
            networkChartData.datasets[0].data.push(item.read_kb);
            networkChartData.datasets[0].data.push(item.write_kb);
        });

        if (usage.is_integration_360monitoring) {
            networkChart.options.scales.xAxes[0].type = 'time';
            networkChart.options.scales.xAxes[0].time.min = from;
            networkChart.options.scales.xAxes[0].time.max = Math.max(now, networkChartData.labels[networkChartData.labels.length - 1]);
        } else {
            networkChart.options.scales.xAxes[0].type = undefined;
            networkChart.options.scales.xAxes[0].time.min = undefined;
            networkChart.options.scales.xAxes[0].time.max = undefined;
        }

        networkChart.update();

        diskChartData.labels = [];
        diskChartData.datasets[0].data = [];
        diskChartData.datasets[1].data = [];

        usage.disk.forEach(item => {
            diskChartData.labels.push(item.second);
            diskChartData.datasets[0].data.push(item.read_kb);
            diskChartData.datasets[0].data.push(item.write_kb);
        });

        if (usage.is_integration_360monitoring) {
            diskChart.options.scales.xAxes[0].type = 'time';
            diskChart.options.scales.xAxes[0].time.min = from;
            diskChart.options.scales.xAxes[0].time.max = Math.max(now, diskChartData.labels[diskChartData.labels.length - 1]);
        } else {
            diskChart.options.scales.xAxes[0].type = undefined;
            diskChart.options.scales.xAxes[0].time.min = undefined;
            diskChart.options.scales.xAxes[0].time.max = undefined;
        }

        diskChart.update();

        memoryChartData.labels = [];
        memoryChartData.datasets[0].data = [];

        usage.memory.forEach(item => {
            memoryChartData.labels.push(item.second);
            memoryChartData.datasets[0].data.push(item.memory);
        });

        if (usage.is_integration_360monitoring) {
            memoryChart.options.scales.xAxes[0].type = 'time';
            memoryChart.options.scales.xAxes[0].time.min = from;
            memoryChart.options.scales.xAxes[0].time.max = Math.max(now, memoryChartData.labels[memoryChartData.labels.length - 1]);
        } else {
            memoryChart.options.scales.xAxes[0].type = undefined;
            memoryChart.options.scales.xAxes[0].time.min = undefined;
            memoryChart.options.scales.xAxes[0].time.max = undefined;
        }

        memoryChart.update();

        if (usage.is_integration_360monitoring) {
            setTimeout(getUsage, 1000 * 30);
        } else {
            setTimeout(getUsage, 1000 * 5);
        }
    });
}

const cpuChartData = {
    labels: [],
    datasets: [{
        label: '{$LANG.solusvm2vps_chart_cpu_label_load|escape}',
        data: [],
        fill: true,
        backgroundColor: 'rgba(138,173,65,0.5)',
        borderColor: 'rgba(138,173,65,1)',
        borderWidth: 2,
        pointBorderWidth: 1,
        pointHoverRadius: 5,
        pointHoverBorderWidth: 2,
        pointRadius: 1,
        pointHitRadius: 10,
        pointHoverBackgroundColor: 'rgba(138,173,65,1)',
        pointHoverBorderColor: 'rgba(138,173,65,0.5)',
        cubicInterpolationMode: 'monotone',
    }]
};

const cpuChart = new Chart($('#cpuChart'), {
    type: 'line',
    data: cpuChartData,
    options: {
        animation: false,
        responsive: true,
        maintainAspectRatio: true,
        aspectRatio: 2.8,
        scales: {
            xAxes: [{
                type: 'time',
                time: {
                    tooltipFormat: 'YYYY-MM-DD HH:mm',
                    displayFormats: {
                        millisecond: 'HH:mm:ss.SSS',
                        second: 'HH:mm:ss',
                        minute: 'HH:mm',
                        hour: 'HH:mm'
                    }
                },
                ticks: {
                    autoSkip: true,
                    maxTicksLimit: 10
                }
            }],
            yAxes: [{
                ticks: {
                    beginAtZero: true,
                    min: 0,
                    precision: 0
                }
            }]
        }
    }
});

const loadChartData = {
    labels: [],
    datasets: [
        {
            label: '{$LANG.solusvm2vps_chart_load1_label_read|escape}',
            data: [],
            fill: false,
            backgroundColor: 'rgba(153,202,255,0.5)',
            borderColor: 'rgba(153,202,255,1)',
            borderWidth: 2,
            pointBorderWidth: 1,
            pointHoverRadius: 5,
            pointHoverBorderWidth: 2,
            pointRadius: 1,
            pointHitRadius: 10,
            pointHoverBackgroundColor: 'rgba(153,202,255,1)',
            pointHoverBorderColor: 'rgba(153,202,255,0.5)',
            cubicInterpolationMode: 'monotone',
        },
        {
            label: '{$LANG.solusvm2vps_chart_load5_label_read|escape}',
            data: [],
            fill: false,
            backgroundColor: 'rgba(8,157,146,0.5)',
            borderColor: 'rgba(8,157,146,1)',
            borderWidth: 2,
            pointBorderWidth: 1,
            pointHoverRadius: 5,
            pointHoverBorderWidth: 2,
            pointRadius: 1,
            pointHitRadius: 10,
            pointHoverBackgroundColor: 'rgba(8,157,146,1)',
            pointHoverBorderColor: 'rgba(8,157,146,0.5)',
            cubicInterpolationMode: 'monotone',
        },
        {
            label: '{$LANG.solusvm2vps_chart_load15_label_read|escape}',
            data: [],
            fill: false,
            backgroundColor: 'rgba(141,137,235,0.5)',
            borderColor: 'rgba(141,137,235,1)',
            borderWidth: 2,
            pointBorderWidth: 1,
            pointHoverRadius: 5,
            pointHoverBorderWidth: 2,
            pointRadius: 1,
            pointHitRadius: 10,
            pointHoverBackgroundColor: 'rgba(141,137,235,1)',
            pointHoverBorderColor: 'rgba(141,137,235,0.5)',
            cubicInterpolationMode: 'monotone',
        },
    ]
};

const loadChart = new Chart($('#loadChart'), {
    type: 'line',
    data: loadChartData,
    options: {
        animation: false,
        responsive: true,
        maintainAspectRatio: true,
        aspectRatio: 2.8,
        scales: {
            xAxes: [{
                type: 'time',
                time: {
                    tooltipFormat: 'YYYY-MM-DD HH:mm',
                    displayFormats: {
                        millisecond: 'HH:mm:ss.SSS',
                        second: 'HH:mm:ss',
                        minute: 'HH:mm',
                        hour: 'HH:mm'
                    }
                },
                ticks: {
                    autoSkip: true,
                    maxTicksLimit: 10
                }
            }],
            yAxes: [{
                ticks: {
                    beginAtZero: true,
                    min: 0,
                    precision: 0
                }
            }]
        },
        plugins: {
            title: {
                display: true,
            },
        },
        interaction: {
            intersect: false,
            axis: 'x',
            mode: 'nearest',
        },
    },
});

const networkChartData = {
    labels: [],
    datasets: [{
        label: '{$LANG.solusvm2vps_chart_network_label_read|escape}',
        data: [],
        fill: true,
        backgroundColor: 'rgba(40,170,222,0.5)',
        borderColor: 'rgba(40,170,222,1)',
        borderWidth: 2,
        pointBorderWidth: 1,
        pointHoverRadius: 5,
        pointHoverBorderWidth: 2,
        pointRadius: 1,
        pointHitRadius: 10,
        pointHoverBackgroundColor: 'rgba(40,170,222,1)',
        pointHoverBorderColor: 'rgba(40,170,222,0.5)',
        cubicInterpolationMode: 'monotone',
    },{
        label: '{$LANG.solusvm2vps_chart_network_label_write|escape}',
        data: [],
        fill: true,
        backgroundColor: 'rgba(138,173,65,0.5)',
        borderColor: 'rgba(138,173,65,1)',
        borderWidth: 2,
        pointBorderWidth: 1,
        pointHoverRadius: 5,
        pointHoverBorderWidth: 2,
        pointRadius: 1,
        pointHitRadius: 10,
        pointHoverBackgroundColor: 'rgba(138,173,65,1)',
        pointHoverBorderColor: 'rgba(138,173,65,0.5)',
        cubicInterpolationMode: 'monotone',
    }]
};

const networkChart = new Chart($('#networkChart'), {
    type: 'line',
    data: networkChartData,
    options: {
        animation: false,
        responsive: true,
        maintainAspectRatio: true,
        aspectRatio: 2.8,
        scales: {
            xAxes: [{
                type: 'time',
                time: {
                    tooltipFormat: 'YYYY-MM-DD HH:mm',
                    displayFormats: {
                        millisecond: 'HH:mm:ss.SSS',
                        second: 'HH:mm:ss',
                        minute: 'HH:mm',
                        hour: 'HH:mm'
                    }
                },
                ticks: {
                    autoSkip: true,
                    maxTicksLimit: 10
                }
            }],
            yAxes: [{
                ticks: {
                    beginAtZero: true,
                    min: 0,
                    precision: 0
                }
            }]
        }
    }
});

const diskChartData = {
    labels: [],
    datasets: [{
        label: '{$LANG.solusvm2vps_chart_disk_label_read|escape}',
        data: [],
        fill: true,
        backgroundColor: 'rgba(40,170,222,0.5)',
        borderColor: 'rgba(40,170,222,1)',
        borderWidth: 2,
        pointBorderWidth: 1,
        pointHoverRadius: 5,
        pointHoverBorderWidth: 2,
        pointRadius: 1,
        pointHitRadius: 10,
        pointHoverBackgroundColor: 'rgba(40,170,222,1)',
        pointHoverBorderColor: 'rgba(40,170,222,0.5)',
        cubicInterpolationMode: 'monotone',
    },{
        label: '{$LANG.solusvm2vps_chart_disk_label_write|escape}',
        data: [],
        fill: true,
        backgroundColor: 'rgba(138,173,65,0.5)',
        borderColor: 'rgba(138,173,65,1)',
        borderWidth: 2,
        pointBorderWidth: 1,
        pointHoverRadius: 5,
        pointHoverBorderWidth: 2,
        pointRadius: 1,
        pointHitRadius: 10,
        pointHoverBackgroundColor: 'rgba(138,173,65,1)',
        pointHoverBorderColor: 'rgba(138,173,65,0.5)',
        cubicInterpolationMode: 'monotone',
    }]
};

const diskChart = new Chart($('#diskChart'), {
    type: 'line',
    data: diskChartData,
    options: {
        animation: false,
        responsive: true,
        maintainAspectRatio: true,
        aspectRatio: 2.8,
        scales: {
            xAxes: [{
                type: 'time',
                time: {
                    tooltipFormat: 'YYYY-MM-DD HH:mm',
                    displayFormats: {
                        millisecond: 'HH:mm:ss.SSS',
                        second: 'HH:mm:ss',
                        minute: 'HH:mm',
                        hour: 'HH:mm'
                    }
                },
                ticks: {
                    autoSkip: true,
                    maxTicksLimit: 10
                }
            }],
            yAxes: [{
                ticks: {
                    beginAtZero: true,
                    min: 0,
                    precision: 0
                }
            }]
        }
    }
});

const memoryChartData = {
    labels: [],
    datasets: [{
        label: '{$LANG.solusvm2vps_chart_memory_label_usage|escape}',
        data: [],
        fill: true,
        backgroundColor: 'rgba(138,173,65,0.5)',
        borderColor: 'rgba(138,173,65,1)',
        borderWidth: 2,
        pointBorderWidth: 1,
        pointHoverRadius: 5,
        pointHoverBorderWidth: 2,
        pointRadius: 1,
        pointHitRadius: 10,
        pointHoverBackgroundColor: 'rgba(138,173,65,1)',
        pointHoverBorderColor: 'rgba(138,173,65,0.5)',
        cubicInterpolationMode: 'monotone',
    }]
};

const memoryChart = new Chart($('#memoryChart'), {
    type: 'line',
    data: memoryChartData,
    options: {
        animation: false,
        responsive: true,
        maintainAspectRatio: true,
        aspectRatio: 2.8,
        scales: {
            xAxes: [{
                type: 'time',
                time: {
                    tooltipFormat: 'YYYY-MM-DD HH:mm',
                    displayFormats: {
                        millisecond: 'HH:mm:ss.SSS',
                        second: 'HH:mm:ss',
                        minute: 'HH:mm',
                        hour: 'HH:mm'
                    }
                },
                ticks: {
                    autoSkip: true,
                    maxTicksLimit: 10
                }
            }],
            yAxes: [{
                ticks: {
                    beginAtZero: true,
                    min: 0,
                    precision: 0
                }
            }]
        }
    }
});

statusUpdate('{$data['status']}', '{$status}');
updateServerStatusIndicator('{$data['status']}');
areSnapshotsEnabled();
checkStatus();

getUsage();
preloadVpcNetworks();

$('#intervalSelect').change(getUsage);
</script>
