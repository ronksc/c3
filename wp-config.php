<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
if ($_SERVER['SERVER_NAME'] == "local.c3yoyodesign.com") {
	/** The name of the database for WordPress */
	define('DB_NAME', 'c3yoyodesign');

	/** MySQL database username */
	define('DB_USER', 'root');

	/** MySQL database password */
	define('DB_PASSWORD', 'root');
	define( 'WP_SITEURL',  'http://local.c3yoyodesign.com' );
	define( 'WP_HOME', 'http://local.c3yoyodesign.com' );
}
else if($_SERVER['SERVER_NAME'] == "www.c3yoyodesign.com"){
	/** The name of the database for WordPress */
	define('DB_NAME', 'c3yoyodesign');

	/** MySQL database username */
	define('DB_USER', 'c3yoyodesign_root');

	/** MySQL database password */
	define('DB_PASSWORD', 'P@ssw0rd');
	define( 'WP_SITEURL',  'http://www.c3yoyodesign.com' );
	define( 'WP_HOME', 'http://www.c3yoyodesign.com' );
}
else if($_SERVER['SERVER_NAME'] == "c3staging.fp-production.com"){
	/** The name of the database for WordPress */
	define('DB_NAME', 'fpproducti_c3yoyodesign');

	/** MySQL database username */
	define('DB_USER', 'fpproducti_root');

	/** MySQL database password */
	define('DB_PASSWORD', 'P@ssw0rd');
	define( 'WP_SITEURL',  'http://c3staging.fp-production.com' );
	define( 'WP_HOME', 'http://c3staging.fp-production.com' );
}


/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '+/V7z=gSZ+|jnPPb^t~H#6zs$) W/?dhBrXML1QxBF{e_)SB$mkII2~JKiLOv1 U');
define('SECURE_AUTH_KEY',  'Jb$1K*6Sj{,Q+#%{Ts }PMvQ%x/y?Ms}<HA}?#V0`U(gBD+~rvgo-GMVe[~q^h=Z');
define('LOGGED_IN_KEY',    'sx!SS ~)v5WXY>sZF*1S]3${q&LrVcD^2-vZ,(o/X@-jWIU2]>)d^z:Z^LO!-U)=');
define('NONCE_KEY',        ';k+ri7EJZ.SnVz+RsybtG#U`+$!{=d8!UGW(LyB*lWG5sV`b9Q^bM[d~UYxpDr2f');
define('AUTH_SALT',        'h+BL2(b+I1%]t<LJf1ZKiY5)2qJo)H>QB(!T|@,$}F*I/Em/O)MC<&0T?qa/y%E-');
define('SECURE_AUTH_SALT', 'tOhD!*bNz9I/{yGX6,/4+_MV*xpO{dAOuL0b=g,-1$W}xQzfEWb2GDE2!bbNzm#m');
define('LOGGED_IN_SALT',   'V]8X!P8NBZC.b^,l/g:XtLU}[tJ=~CWk;U>)by~`+%z8yW3^Q)Z|TW+ Q{>!*|#(');
define('NONCE_SALT',       'UpiQI`u?/L6H]4n/Q<dMG7YelFsY3okTF3(Yv/.^B-><x|t6cD|)%iu}=gIB^s^#');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

define('WP_MEMORY_LIMIT', '96M');

define('WP_ENV', 'development');

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
