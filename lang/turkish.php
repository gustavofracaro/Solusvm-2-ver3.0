<?php
// Copyright 1999-2024. WebPros International GmbH. All rights reserved.

if (!defined('WHMCS')) {
    die('This file cannot be accessed directly');
}

$_LANG['solusvm2vps_config_option_plan'] = 'Plan';
$_LANG['solusvm2vps_config_option_operating_system'] = 'İşletim Sistemi';
$_LANG['solusvm2vps_config_option_application'] = 'Uygulama';
$_LANG['solusvm2vps_config_option_default_operating_system'] = 'Varsayılan İşletim Sistemi';
$_LANG['solusvm2vps_config_option_application'] = 'Uygulama';
$_LANG['solusvm2vps_config_option_default_location'] = 'Varsayılan Konum';
$_LANG['solusvm2vps_config_option_backup_enabled'] = 'Yedeklemeleri Etkinleştir';
$_LANG['solusvm2vps_config_option_snapshot_enabled'] = 'Anlık Görüntüleri Etkinleştir';
$_LANG['solusvm2vps_config_option_user_data'] = 'Kullanıcı Verileri';
$_LANG['solusvm2vps_config_option_none'] = '(Hiçbiri)';
$_LANG['solusvm2vps_config_option_default_role'] = 'Varsayılan Rol';
$_LANG['solusvm2vps_config_option_default_limit_group'] = 'Varsayılan Sınır Grubu';
$_LANG['solusvm2vps_config_option_additional_disk_offer'] = 'Ek Disk Teklifi';
$_LANG['solusvm2vps_config_option_360monitoring_enabled'] = '360 Monitoring Entegrasyonu sun';

$_LANG['solusvm2vps_button_restart'] = 'Yeniden Başlat';
$_LANG['solusvm2vps_button_sync'] = 'Hesabı Senkronize Et';
$_LANG['solusvm2vps_button_vnc'] = 'VNC Erişimi';
$_LANG['solusvm2vps_button_reinstall'] = 'Yeniden Kur';
$_LANG['solusvm2vps_button_cancel'] = 'İptal Et';
$_LANG['solusvm2vps_button_close'] = 'Kapat';
$_LANG['solusvm2vps_button_start'] = 'Başlat';
$_LANG['solusvm2vps_button_stop'] = 'Durdur';
$_LANG['solusvm2vps_button_power_off'] = 'Gücü Kes';
$_LANG['solusvm2vps_button_reset_pw'] = 'Kök Şifreyi Sıfırla';
$_LANG['solusvm2vps_button_change_hostname'] = 'Ana Bilgisayar Adını Değiştir';
$_LANG['solusvm2vps_button_rescue_mode'] = 'Kurtar';
$_LANG['solusvm2vps_button_create_backup'] = 'Yedekleme Oluştur';
$_LANG['solusvm2vps_button_restore_backup'] = 'Geri Yükle';
$_LANG['solusvm2vps_button_create_snapshot'] = 'Anlık Görüntü Oluştur';
$_LANG['solusvm2vps_button_revert_snapshot'] = 'Geri Al';
$_LANG['solusvm2vps_button_login'] = 'Bulut paneline giriş yap';

$_LANG['solusvm2vps_confirm_reinstall'] = 'Sunucu yeniden kurulsun mu?';
$_LANG['solusvm2vps_password_reset_success'] = 'Kök şifre sıfırlandı. Lütfen yeni sunucu şifresini içeren e-posta için posta kutunuzu kontrol edin.';
$_LANG['solusvm2vps_password_reset_success_with_password'] = 'Kök şifre sıfırlandı. Yeni şifre: ';
$_LANG['solusvm2vps_password_reset_success_copy_password'] = 'Şifreyi panoya kopyala';
$_LANG['solusvm2vps_new_hostname'] = 'Ana bilgisayar adını şuna değiştir:';
$_LANG['solusvm2vps_confirm_change_hostname'] = 'Ana bilgisayar adını değiştirmek için makinenin yeniden başlatılması gerek. Devam edilsin mi?';
$_LANG['solusvm2vps_hostname_changed'] = 'Ana bilgisayar adı değiştirildi';
$_LANG['solusvm2vps_reinstall_integration_enable_360monitoring'] = '360 Monitoring Entegrasyonunu Etkinleştir';

$_LANG['solusvm2vps_error_server_already_created'] = 'Bu kimliğe sahip sunucu zaten SolusVM 2\'de mevcut.';
$_LANG['solusvm2vps_error_server_not_found'] = 'Sunucu bulunamadı.';
$_LANG['solusvm2vps_error_change_hostname'] = 'Ana bilgisayar adı değiştirilemedi';
$_LANG['solusvm2vps_error_user_not_found'] = 'Böyle bir e-posta adresine sahip kullanıcı SolusVM 2.0\'da bulunamadı';

$_LANG['solusvm2vps_rescue_mode_summary'] = 'Kurtarma ISO\'sundan başlatma, çekirdek uyumsuzluklarını ve bozuk dosya sistemlerini düzeltmenize yardımcı olur.';
$_LANG['solusvm2vps_rescue_mode_description'] = 'Sunucu, varsayılan olarak diskinden başlatılır. Eğer sunucunuz kurtarma ISO\'sundan başlatıldıysa ve sunucuyu diskten tekrar başlatmak istiyorsanız şunu yapın:

1. Sunucunuzu kapatıp yeniden başlatın. Sunucuyu kapatmak için yukarıdaki Durdur düğmesine tıklayın veya komut satırını kullanın.

2. Sunucunuzu çalıştırın. Bunun için yukarıdaki Başlat düğmesine tıklayın veya sunucuyu diskinden başlatın.';

$_LANG['solusvm2vps_exception_page_default_title'] = 'Hay aksi! Bir sorun çıktı.';
$_LANG['solusvm2vps_exception_page_default_message'] = 'Lütfen geri gidip tekrar deneyin. Sorun devam ederse lütfen teknik destekle iletişime geçin.';
$_LANG['solusvm2vps_exception_page_pending_title'] = 'Servis provizyonlanıyor';
$_LANG['solusvm2vps_exception_page_pending_message'] = 'Servisiniz provizyonlanıyor. Herhangi bir sorunuz varsa lütfen teknik destekle iletişime geçin.';
$_LANG['solusvm2vps_exception_page_cancelled_title'] = 'Servis sonlandırıldı';
$_LANG['solusvm2vps_exception_page_cancelled_message'] = 'Bu servis zaten sonlandırıldı. Herhangi bir sorunuz varsa lütfen teknik destekle iletişime geçin.';

$_LANG['solusvm2vps_chart_interval_1h'] = 'Son 1 saat';
$_LANG['solusvm2vps_chart_interval_6h'] = 'Son 6 saat';
$_LANG['solusvm2vps_chart_interval_24h'] = 'Son 24 saat';

$_LANG['solusvm2vps_chart_integration_poweredby'] = 'Destekleyen';
$_LANG['solusvm2vps_chart_integration_360monitoring'] = '360 Monitoring';

$_LANG['solusvm2vps_chart_cpu_title'] = 'CPU kullanımı';
$_LANG['solusvm2vps_chart_cpu_label_load'] = 'Yük ortalaması (%)';

$_LANG['solusvm2vps_chart_load_title'] = 'Yük ortalaması';
$_LANG['solusvm2vps_chart_load1_label_read'] = '1 dk.';
$_LANG['solusvm2vps_chart_load5_label_read'] = '5 dk.';
$_LANG['solusvm2vps_chart_load15_label_read'] = '15 dk.';

$_LANG['solusvm2vps_chart_network_title'] = 'Ağ kullanımı';
$_LANG['solusvm2vps_chart_network_label_read'] = 'Okuma KiB';
$_LANG['solusvm2vps_chart_network_label_write'] = 'Yazma KiB';

$_LANG['solusvm2vps_chart_disk_title'] = 'Disk kullanımı';
$_LANG['solusvm2vps_chart_disk_label_read'] = 'Okuma KiB';
$_LANG['solusvm2vps_chart_disk_label_write'] = 'Yazma KiB';

$_LANG['solusvm2vps_chart_memory_title'] = 'Bellek kullanımı';
$_LANG['solusvm2vps_chart_memory_label_usage'] = 'Kullanım MiB';

$_LANG['solusvm2vps_traffic'] = 'Toplam trafik';

$_LANG['solusvm2vps_error_guest_tools_missing'] = 'Bu eylem için konuk araçlar gerekli.';
$_LANG['solusvm2vps_service_is_suspended'] = 'Askıya alınmış servis için bu eyleme izin verilmiyor.';
$_LANG['solusvm2vps_service_suspended_state'] = 'Bu servis askıya alındı';
$_LANG['solusvm2vps_backups_are_disabled'] = 'Bu ürün için yedeklemeler devre dışı bırakıldı';
$_LANG['solusvm2vps_snapshots_are_disabled'] = 'Bu ürün için anlık görüntüler devre dışı bırakıldı';

$_LANG['solusvm2vps_monitoring360_consent'] = 'Talep ettiğiniz ürünleri, servisleri, içeriği size sunmak ve/veya sorularınızı yanıtlayabilmek için kişisel verilerinizi depolamamız ve işlememiz gerekiyor. Lütfen daha fazla bilgi için <a href="https://360monitoring.com/legal/#privacy-policy" target="_blank" class="alert-link">Gizlilik Politikasını</a> okuyun.<br />360 Monitoring\'i etkinleştirerek hesap sonlandırılmadığı sürece 360 Monitoring\'in hesabımı barındırma amacıyla kişisel verilerimi işleyebileceğini kabul ederim.';