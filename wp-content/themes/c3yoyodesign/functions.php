<?php
/**
 * Roots includes
 *
 * The $roots_includes array determines the code library included in your theme.
 * Add or remove files to the array as needed. Supports child theme overrides.
 *
 * Please note that missing files will produce a fatal error.
 *
 * @link https://github.com/roots/roots/pull/1042
 */
$roots_includes = array(
  'lib/utils.php',           // Utility functions
  'lib/init.php',            // Initial theme setup and constants
  'lib/wrapper.php',         // Theme wrapper class
  'lib/sidebar.php',         // Sidebar class
  'lib/config.php',          // Configuration
  'lib/activation.php',      // Theme activation
  'lib/titles.php',          // Page titles
  'lib/nav.php',             // Custom nav modifications
  'lib/gallery.php',         // Custom [gallery] modifications
  'lib/scripts.php',         // Scripts and stylesheets
  'lib/extras.php',          // Custom functions
  'lib/post-types.php'       // Register Post Types
);

function register_my_menus() {
  register_nav_menus(
    array(
      'function_menu' => __( 'Function Menu' ),
	  'product_filter_menu' => __( 'Product Filter' ),
	  'footer_navigation' => __( 'Footer Navigation' )
    )
  );
}
add_action( 'init', 'register_my_menus' );

register_sidebar( array(
	'name' => 'Function Menu',
	'id' => 'function_menu',
	'before_widget' => '',
	'after_widget' => '',
	'before_title' => false,
	'after_title' => false
) );

register_sidebar( array(
	'name' => 'Product Filter',
	'id' => 'product_filter_menu',
	'before_widget' => '<div id="product-filter-%1$s" class="widget %2$s">',
	'after_widget' => '</div>',
	'before_title' => '<h3 class="widgetTitle">',
	'after_title' => '</h3>'
) );

register_sidebar( array(
	'name' => 'Footer Navigation',
	'id' => 'footer_navigation',
	'before_widget' => '',
	'after_widget' => '',
	'before_title' => false,
	'after_title' => false
) );

foreach ($roots_includes as $file) {
  if (!$filepath = locate_template($file)) {
    trigger_error(sprintf(__('Error locating %s for inclusion', 'roots'), $file), E_USER_ERROR);
  }

  require_once $filepath;
}
unset($file, $filepath);


function new_excerpt_more($more) {
       global $post;
	return '<a class="btn_readmore" href="'. get_permalink($post->ID) . '">...More</a>';
}
add_filter('excerpt_more', 'new_excerpt_more');

function my_acf_google_map_api( $api ){
	
	$api['key'] = 'AIzaSyCpGcV1lNRwqsSS3ixl-VK9pKCgME_kEaI';
	
	return $api;
	
}

add_filter('acf/fields/google_map/api', 'my_acf_google_map_api');

function change_page_menu_classes($menu)
{
    global $post;
    if (get_post_type($post) == 'team-member')
    {
        $menu = str_replace( 'active', '', $menu ); // remove all current_page_parent classes
        $menu = str_replace( 'menu-team-c3', 'menu-team-c3 active', $menu ); // add the current_page_parent class to the page you want
    }else if (get_post_type($post) == 'c3_product')
    {
        $menu = str_replace( 'active', '', $menu ); // remove all current_page_parent classes
        $menu = str_replace( 'menu-yoyos', 'menu-yoyos active', $menu ); // add the current_page_parent class to the page you want
    }
    return $menu;
}
add_filter( 'nav_menu_css_class', 'change_page_menu_classes', 10,2 );

/*add_filter('loop_shop_columns', 'loop_columns');
if (!function_exists('loop_columns')) {
	function loop_columns() {
		return 4; // 3 products per row
	}
}*/

function sv_remove_product_page_skus( $enabled ) {
    if ( ! is_admin() && is_product() ) {
        return false;
    }

    return $enabled;
}
add_filter( 'wc_product_sku_enabled', 'sv_remove_product_page_skus' );

function patricks_currency_symbol( $currency_symbol, $currency ) {
    switch( $currency ) {
        case 'HKD':
            $currency_symbol = 'HKD $';
            break;
        case 'RMB':
            $currency_symbol = 'RMB $';
            break;
        case 'USD':
            $currency_symbol = 'USD $';
            break;
    }
    return $currency_symbol;
}
add_filter('woocommerce_currency_symbol', 'patricks_currency_symbol', 30, 2);