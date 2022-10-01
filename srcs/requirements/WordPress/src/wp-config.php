

<?php

define("DB_NAME",				getenv("mariadb_dbname"));
define("DB_USER",				getenv("mariadb_user"));
define("DB_PASSWORD",			getenv("mariadb_pass"));
define("DB_HOST",				getenv("mariabd_host") . ":3306");
define("DB_CHARSET",			"utf8");
define("DB_COLLATE",			"utf8_general_ci");

define('AUTH_KEY',         'LsjkcvI*!6@rLgnq7+$^F_z<:]Og[MU=?PZ:^hQ_a>cU}LjAoFP-H|FCAMw+%4>b');
define('SECURE_AUTH_KEY',  'KKn)-C=W+7<qd-FU})b|LLg;A*<- -Lz@W+0z%-X%1~$IqAUUJU5W:@_$0#d!/Rh');
define('LOGGED_IN_KEY',    '1T.aT |!TC22;oJIe)O <]Y|J$.u#]gd)4nQ!K_oWoaFD&yn?%7!t-c9N3,O_4 U');
define('NONCE_KEY',        ' ]xdinfvTS)HPiSwON94TR]((#9*]2zz5>RP/h-T#UM,KpLc#XZ/14]Q@-e]W5MF');
define('AUTH_SALT',        'c7*~M^V:X]a]7cSw_uEcS[)vMt:^*|AW;._P.oyDx;#w;V_7r/?*]!cdSo52d.Q,');
define('SECURE_AUTH_SALT', 'q%ahI>z$ZaxP%K.;+i JaV|6W7+cd/ifuJc)`FA5KPmK{j|OVt~rO;+o5a`.a/|;');
define('LOGGED_IN_SALT',   '%9iEHrvCmwJV5oISkVF(2n:+{SsTs(y%&Q k*f:dat=YlDSB`,*O--|>m&U|)?)|');
define('NONCE_SALT',       '+J>*a(DSm9NFM5^5]H=y-}V+P19DD=x&ymdVW$dM8AFUx?,K,03(w+!{:HM2M&z|');

/* WordPress database table prefix. */
$table_prefix = 'wp_';

/* For developers: WordPress debugging mode. */
define( 'WP_DEBUG', true );

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';