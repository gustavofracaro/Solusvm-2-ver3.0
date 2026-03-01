<?php
// Copyright 1999-2024. WebPros International GmbH. All rights reserved.

if (!defined('WHMCS')) {
    die('This file cannot be accessed directly');
}

$_LANG['solusvm2vps_config_option_plan'] = 'План';
$_LANG['solusvm2vps_config_option_operating_system'] = 'Операционная система';
$_LANG['solusvm2vps_config_option_application'] = 'Приложение';
$_LANG['solusvm2vps_config_option_default_operating_system'] = 'Операционная система по умолчанию';
$_LANG['solusvm2vps_config_option_application'] = 'Приложение';
$_LANG['solusvm2vps_config_option_default_location'] = 'Локация по умолчанию';
$_LANG['solusvm2vps_config_option_backup_enabled'] = 'Включить резервное копирование';
$_LANG['solusvm2vps_config_option_snapshot_enabled'] = 'Включить снапшоты';
$_LANG['solusvm2vps_config_option_user_data'] = 'Пользовательские данные';
$_LANG['solusvm2vps_config_option_none'] = '(Нет)';
$_LANG['solusvm2vps_config_option_default_role'] = 'Роль по умолчанию';
$_LANG['solusvm2vps_config_option_default_limit_group'] = 'Лимит-группа по умолчанию';
$_LANG['solusvm2vps_config_option_additional_disk_offer'] = 'Предложение для дополнительного диска';
$_LANG['solusvm2vps_config_option_360monitoring_enabled'] = 'Предлагать интеграцию с 360 Monitoring';

$_LANG['solusvm2vps_button_restart'] = 'Перезапустить';
$_LANG['solusvm2vps_button_sync'] = 'Синхронизировать учетную запись';
$_LANG['solusvm2vps_button_vnc'] = 'Доступ по VNC';
$_LANG['solusvm2vps_button_reinstall'] = 'Переустановить';
$_LANG['solusvm2vps_button_cancel'] = 'Отмена';
$_LANG['solusvm2vps_button_close'] = 'Закрыть';
$_LANG['solusvm2vps_button_start'] = 'Запустить';
$_LANG['solusvm2vps_button_stop'] = 'Остановить';
$_LANG['solusvm2vps_button_power_off'] = 'Выключить';
$_LANG['solusvm2vps_button_reset_pw'] = 'Сбросить пароль root';
$_LANG['solusvm2vps_button_change_hostname'] = 'Изменить имя хоста';
$_LANG['solusvm2vps_button_rescue_mode'] = 'Воссоздать';
$_LANG['solusvm2vps_button_create_backup'] = 'Создать резервную копию';
$_LANG['solusvm2vps_button_restore_backup'] = 'Восстановить';
$_LANG['solusvm2vps_button_create_snapshot'] = 'Создать снапшот';
$_LANG['solusvm2vps_button_revert_snapshot'] = 'Вернуть';
$_LANG['solusvm2vps_button_login'] = 'Войти в облачную панель';

$_LANG['solusvm2vps_confirm_reinstall'] = 'Переустановить сервер?';
$_LANG['solusvm2vps_password_reset_success'] = 'Пароль root сброшен. Проверьте, пришло ли на ваш почтовый ящик письмо с новым паролем сервера.';
$_LANG['solusvm2vps_password_reset_success_with_password'] = 'Пароль root сброшен. Новый пароль: ';
$_LANG['solusvm2vps_password_reset_success_copy_password'] = 'Скопировать пароль в буфер обмена';
$_LANG['solusvm2vps_new_hostname'] = 'Изменить имя хоста на:';
$_LANG['solusvm2vps_confirm_change_hostname'] = 'Для изменения имени хоста требуется перезагрузка машины. Продолжить?';
$_LANG['solusvm2vps_hostname_changed'] = 'Имя хоста изменено';
$_LANG['solusvm2vps_reinstall_integration_enable_360monitoring'] = 'Включить интеграцию с 360 Monitoring';

$_LANG['solusvm2vps_error_server_already_created'] = 'Сервер с таким ID уже существует в SolusVM 2.';
$_LANG['solusvm2vps_error_server_not_found'] = 'Сервер не найден.';
$_LANG['solusvm2vps_error_change_hostname'] = 'Ошибка изменения имени хоста';
$_LANG['solusvm2vps_error_user_not_found'] = 'Пользователь с таким адресом электронной почты не найден в SolusVM 2.0';

$_LANG['solusvm2vps_rescue_mode_summary'] = 'Загрузка с восстановительного ISO-образа поможет вам исправить несоответствия ядра и повреждения файловой системы.';
$_LANG['solusvm2vps_rescue_mode_description'] = 'По умолчанию сервер загружается с диска. Если сервер был загружен с восстановительного ISO-образа, а вы хотите снова загрузить его с диска, сделайте следующее:

1. Выключите или перезагрузите сервер. Чтобы выключить сервер, нажмите кнопку "Остановить" в верхней части страницы или используйте командную строку.

2. Запустите сервер. Для этого нажмите кнопку "Запустить" выше или загрузите сервер с диска.';

$_LANG['solusvm2vps_exception_page_default_title'] = 'Что-то пошло не так.';
$_LANG['solusvm2vps_exception_page_default_message'] = 'Вернитесь назад и повторите попытку. Если проблема не исчезнет, обратитесь в службу технической поддержки.';
$_LANG['solusvm2vps_exception_page_pending_title'] = 'Выполняется подготовка службы';
$_LANG['solusvm2vps_exception_page_pending_message'] = 'Выполняется подготовка службы. Если у вас имеются вопросы, обратитесь в службу технической поддержки.';
$_LANG['solusvm2vps_exception_page_cancelled_title'] = 'Служба завершена';
$_LANG['solusvm2vps_exception_page_cancelled_message'] = 'Эта служба уже завершена. Если у вас имеются вопросы, обратитесь в службу технической поддержки.';

$_LANG['solusvm2vps_chart_interval_1h'] = 'Последний час';
$_LANG['solusvm2vps_chart_interval_6h'] = 'Последние 6 часов';
$_LANG['solusvm2vps_chart_interval_24h'] = 'Последние 24 часа';

$_LANG['solusvm2vps_chart_integration_poweredby'] = 'Powered by';
$_LANG['solusvm2vps_chart_integration_360monitoring'] = '360 Monitoring';

$_LANG['solusvm2vps_chart_cpu_title'] = 'Загрузка процессора';
$_LANG['solusvm2vps_chart_cpu_label_load'] = 'Средняя загрузка (%)';

$_LANG['solusvm2vps_chart_load_title'] = 'Средняя загрузка';
$_LANG['solusvm2vps_chart_load1_label_read'] = '1 мин.';
$_LANG['solusvm2vps_chart_load5_label_read'] = '5 мин.';
$_LANG['solusvm2vps_chart_load15_label_read'] = '15 мин.';

$_LANG['solusvm2vps_chart_network_title'] = 'Использование сети';
$_LANG['solusvm2vps_chart_network_label_read'] = 'Чтение, КиБ';
$_LANG['solusvm2vps_chart_network_label_write'] = 'Запись, КиБ';

$_LANG['solusvm2vps_chart_disk_title'] = 'Использование диска';
$_LANG['solusvm2vps_chart_disk_label_read'] = 'Чтение, КиБ';
$_LANG['solusvm2vps_chart_disk_label_write'] = 'Запись, КиБ';

$_LANG['solusvm2vps_chart_memory_title'] = 'Использование памяти';
$_LANG['solusvm2vps_chart_memory_label_usage'] = 'Использование, МиБ';

$_LANG['solusvm2vps_traffic'] = 'Общий трафик';

$_LANG['solusvm2vps_error_guest_tools_missing'] = 'Для этого действия требуются гостевые инструменты.';
$_LANG['solusvm2vps_service_is_suspended'] = 'Это действие не разрешено для приостановленной службы.';
$_LANG['solusvm2vps_service_suspended_state'] = 'Эта служба приостановлена';
$_LANG['solusvm2vps_backups_are_disabled'] = 'Резервные копии отключены для этого продукта';
$_LANG['solusvm2vps_snapshots_are_disabled'] = 'Снапшоты отключены для этого продукта';

$_LANG['solusvm2vps_monitoring360_consent'] = 'Для того чтобы мы могли предоставлять вам требуемые продукты, услуги и содержимое и/или отвечать на ваши вопросы, нам необходимо хранить и обрабатывать ваши персональные данные. Для получения более подробной информации ознакомьтесь с нашей <a href="https://360monitoring.com/legal/#privacy-policy" target="_blank" class="alert-link">Политикой конфиденциальности</a>.<br />Включая 360 Monitoring, я соглашаюсь с тем, что 360 Monitoring может обрабатывать мои персональные данные для обслуживания моей учетной записи до тех пор, пока она не будет удалена.';