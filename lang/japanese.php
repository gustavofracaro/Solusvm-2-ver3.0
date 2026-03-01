<?php
// Copyright 1999-2024. WebPros International GmbH. All rights reserved.

if (!defined('WHMCS')) {
    die('This file cannot be accessed directly');
}

$_LANG['solusvm2vps_config_option_plan'] = 'プラン';
$_LANG['solusvm2vps_config_option_operating_system'] = 'オペレーティングシステム';
$_LANG['solusvm2vps_config_option_application'] = 'アプリケーション';
$_LANG['solusvm2vps_config_option_default_operating_system'] = 'デフォルトのオペレーティングシステム';
$_LANG['solusvm2vps_config_option_application'] = 'アプリケーション';
$_LANG['solusvm2vps_config_option_default_location'] = 'デフォルトのロケーション';
$_LANG['solusvm2vps_config_option_backup_enabled'] = 'バックアップを有効にする';
$_LANG['solusvm2vps_config_option_snapshot_enabled'] = 'スナップショットを有効にする';
$_LANG['solusvm2vps_config_option_user_data'] = 'ユーザデータ';
$_LANG['solusvm2vps_config_option_none'] = '(なし)';
$_LANG['solusvm2vps_config_option_default_role'] = 'デフォルトの役割';
$_LANG['solusvm2vps_config_option_default_limit_group'] = 'デフォルトの制限グループ';
$_LANG['solusvm2vps_config_option_additional_disk_offer'] = '追加ディスクのオファー';
$_LANG['solusvm2vps_config_option_360monitoring_enabled'] = '360 Monitoring 連携を提供する';

$_LANG['solusvm2vps_button_restart'] = '再起動';
$_LANG['solusvm2vps_button_sync'] = 'アカウントを同期';
$_LANG['solusvm2vps_button_vnc'] = 'VNC アクセス';
$_LANG['solusvm2vps_button_reinstall'] = '再インストール';
$_LANG['solusvm2vps_button_cancel'] = 'キャンセル';
$_LANG['solusvm2vps_button_close'] = '終了';
$_LANG['solusvm2vps_button_start'] = '開始';
$_LANG['solusvm2vps_button_stop'] = '停止';
$_LANG['solusvm2vps_button_power_off'] = '強制終了';
$_LANG['solusvm2vps_button_reset_pw'] = 'Root パスワードを再設定';
$_LANG['solusvm2vps_button_change_hostname'] = 'ホスト名を変更';
$_LANG['solusvm2vps_button_rescue_mode'] = 'レスキュー';
$_LANG['solusvm2vps_button_create_backup'] = 'バックアップを作成';
$_LANG['solusvm2vps_button_restore_backup'] = '復元';
$_LANG['solusvm2vps_button_create_snapshot'] = 'スナップショットを作成';
$_LANG['solusvm2vps_button_revert_snapshot'] = '元に戻す';
$_LANG['solusvm2vps_button_login'] = 'クラウドパネルにログイン';

$_LANG['solusvm2vps_confirm_reinstall'] = 'サーバを再インストールしますか？';
$_LANG['solusvm2vps_password_reset_success'] = 'root パスワードがリセットされました。新しいサーバパスワードを使用してメールボックスのメールをチェックしてください。';
$_LANG['solusvm2vps_password_reset_success_with_password'] = 'root パスワードがリセットされました。新しいパスワード: ';
$_LANG['solusvm2vps_password_reset_success_copy_password'] = 'パスワードをクリップボードにコピー';
$_LANG['solusvm2vps_new_hostname'] = 'ホスト名を変更:';
$_LANG['solusvm2vps_confirm_change_hostname'] = 'ホスト名を変更するには、マシンを再起動する必要があります。続けますか？';
$_LANG['solusvm2vps_hostname_changed'] = 'ホスト名が変更されました';
$_LANG['solusvm2vps_reinstall_integration_enable_360monitoring'] = '360 Monitoring 連携を有効にする';

$_LANG['solusvm2vps_error_server_already_created'] = 'この ID のサーバは既に SolusVM 2 にあります。';
$_LANG['solusvm2vps_error_server_not_found'] = 'サーバが見つかりませんでした。';
$_LANG['solusvm2vps_error_change_hostname'] = 'ホスト名の変更に失敗しました';
$_LANG['solusvm2vps_error_user_not_found'] = 'このメールアドレスのユーザは SolusVM 2.0 に見つかりません';

$_LANG['solusvm2vps_rescue_mode_summary'] = 'レスキュー ISO から起動することで、カーネルの不一致やファイルシステムの破損を修復できます。';
$_LANG['solusvm2vps_rescue_mode_description'] = 'デフォルトで、サーバはディスクから起動されます。サーバをレスキュー ISO から起動し、再度ディスクから起動したい場合は、以下の手順に従ってください。

1. サーバをシャットダウンまたは再起動します。サーバをシャットダウンするには、上部の [停止] ボタンをクリックするか、コマンドラインを使用します。

2. サーバの電源を入れます。これを行うには、上部の [開始] ボタンをクリックするか、サーバをディスクから起動します。';

$_LANG['solusvm2vps_exception_page_default_title'] = '問題が発生しました。';
$_LANG['solusvm2vps_exception_page_default_message'] = '戻ってやり直してください。問題が解決しない場合、テクニカルサポートまでお問い合わせください。';
$_LANG['solusvm2vps_exception_page_pending_title'] = 'サービスは現在プロビジョニング中です';
$_LANG['solusvm2vps_exception_page_pending_message'] = 'サービスは現在プロビジョニング中です。ご質問があればテクニカルサービスまでお問い合わせください。';
$_LANG['solusvm2vps_exception_page_cancelled_title'] = 'サービスは強制終了されました';
$_LANG['solusvm2vps_exception_page_cancelled_message'] = 'サービスは既に強制終了されました。ご質問があればテクニカルサービスまでお問い合わせください。';

$_LANG['solusvm2vps_chart_interval_1h'] = '過去 1 時間';
$_LANG['solusvm2vps_chart_interval_6h'] = '過去 6 時間';
$_LANG['solusvm2vps_chart_interval_24h'] = '過去 24 時間';

$_LANG['solusvm2vps_chart_integration_poweredby'] = 'Powered by';
$_LANG['solusvm2vps_chart_integration_360monitoring'] = '360 Monitoring';

$_LANG['solusvm2vps_chart_cpu_title'] = 'CPU 使用率';
$_LANG['solusvm2vps_chart_cpu_label_load'] = 'ロードアベレージ (%)';

$_LANG['solusvm2vps_chart_load_title'] = 'ロードアベレージ';
$_LANG['solusvm2vps_chart_load1_label_read'] = '1 分';
$_LANG['solusvm2vps_chart_load5_label_read'] = '5 分';
$_LANG['solusvm2vps_chart_load15_label_read'] = '15 分';

$_LANG['solusvm2vps_chart_network_title'] = 'ネットワーク使用率';
$_LANG['solusvm2vps_chart_network_label_read'] = '読み取り KiB';
$_LANG['solusvm2vps_chart_network_label_write'] = '書き込み KiB';

$_LANG['solusvm2vps_chart_disk_title'] = 'ディスク使用率';
$_LANG['solusvm2vps_chart_disk_label_read'] = '読み取り KiB';
$_LANG['solusvm2vps_chart_disk_label_write'] = '書き込み KiB';

$_LANG['solusvm2vps_chart_memory_title'] = 'メモリ使用率';
$_LANG['solusvm2vps_chart_memory_label_usage'] = '使用率 MiB';

$_LANG['solusvm2vps_traffic'] = '合計トラフィック';

$_LANG['solusvm2vps_error_guest_tools_missing'] = 'このアクションにはゲストツールが必要です。';
$_LANG['solusvm2vps_service_is_suspended'] = 'このアクションは一時停止中のサービスに対しては許可されません。';
$_LANG['solusvm2vps_service_suspended_state'] = 'このサービスは一時停止中です';
$_LANG['solusvm2vps_backups_are_disabled'] = 'バックアップはこの製品では無効です';
$_LANG['solusvm2vps_snapshots_are_disabled'] = 'スナップショットはこの製品では無効です';

$_LANG['solusvm2vps_monitoring360_consent'] = 'リクエストされた製品、サービス、コンテンツをお客様に提供するために、あるいはお客様からの問い合わせに答えるために、弊社はお客様の個人情報を保存して処理する必要があります。詳しくは<a href="https://360monitoring.com/legal/#privacy-policy" target="_blank" class="alert-link">プライバシーポリシー</a>をお読みください。<br />私は、360 Monitoring を有効にすることで、私のアカウントが維持されている限り、アカウントの管理を目的として、360 Monitoring が私の個人情報を処理する可能性があることに同意します。';