<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://ru.wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'wordpress' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'phpmyadmin' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', 'phpmyadmin' );

/** Имя сервера MySQL */
define( 'DB_HOST', 'mysql-svc' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '4_r+i~~2Z$7D&Bk]Yj-5K|5HI{WC4;sSDFS$;gh=FCK[0(`IUrD=3_I%5H={mWMT' );
define( 'SECURE_AUTH_KEY',  '#B:`W6/=ZL%+@qc69$2B/E2F;|4Hx4[Yh3Rdg-EJ.MymJBmyJ3%2.EP--w=pjs*-' );
define( 'LOGGED_IN_KEY',    'rUYceZu/L rkWpVpDuyV_CO:@<g7%*ja7l{ c81g@AYC` Pt9bC8@?L~v$T)/Q/)' );
define( 'NONCE_KEY',        'PZ9<DPqO/i!pCSVW@?x,<%2/9|~2G;~$g=aR!33 A^f6O1sy`Ja*[?KL>(lJL3z9' );
define( 'AUTH_SALT',        'e8>-y$X!9yZ^{[0K&j :!tNimZ65kc=r ;R6#Q#(trH FRk&{dnrZ@+IT[6sy2K$' );
define( 'SECURE_AUTH_SALT', '}p^gME1xTv.Bqu)bX#9)D=R#1$~AUbu8El)Fa`B&M6I%;k&wXKeNM7 Um5zxkJM/' );
define( 'LOGGED_IN_SALT',   'YH|.#@MBIrXp*B~p7Ku&Qu7GO9(nJTya&)uEEyO1<q:vaC{1XVYtOao5wUA_<>6J' );
define( 'NONCE_SALT',       '-)%Tn81gutmVb;HLZJ(<.k).K 5=5$bTi5m/&->m~Rn.JO{w>mMMyQcXNDA@<9h2' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в документации.
 *
 * @link https://ru.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once ABSPATH . 'wp-settings.php';
