<?php

//Exit if accessed directly
if(!defined('ABSPATH')){
	return;
}

//Plugin Admin Options
include plugin_dir_path(__FILE__).'inc/xoo-qv-admin.php';

//Activation on mobile devices
if(!$xoo_qv_gl_mobile_value){
	if(wp_is_mobile()){
		return;
	}
}

//Languages
function xoo_qv_languages() {
  load_plugin_textdomain( 'xoo-qv-domain', FALSE, plugin_basename( dirname( __FILE__ ) ) . '/languages');
}

add_action( 'plugins_loaded', 'xoo_qv_languages' );

//Enqueue Scripts
function xoo_qv_enqueue_scripts(){
	global $xoo_qv_lb_title_value, // LightBox image title
		   $xoo_qv_gl_anim_value,  // Modal Animation
		   $xoo_qv_button_position_value; // Image Hover

	wp_enqueue_style('xoo-qv-style',plugins_url('/assets/css/xoo-qv-style.css',__FILE__),null,'1.6');
	wp_enqueue_script('xoo-qv-js',plugins_url('/assets/js/xoo-qv-js.js',__FILE__),array('jquery'),'1.6',true);
	wp_localize_script('xoo-qv-js','xoo_qv_localize',array(
		'adminurl' => admin_url().'admin-ajax.php',
		'prettyPhoto_title' => esc_attr($xoo_qv_lb_title_value),
		'modal_anim' => esc_attr($xoo_qv_gl_anim_value),
		'img_hover_btn'		=> esc_attr($xoo_qv_button_position_value)
		));
}
add_action('wp_enqueue_scripts','xoo_qv_enqueue_scripts');

//Enqueue prettyPhoto Woocommerce

function xoo_qv_lightbox() {
  global $woocommerce , $xoo_qv_lb_enable_value; // Enable Lightbox
  wp_enqueue_script( 'wc-add-to-cart-variation' ); //Variable product Script

  if ( $xoo_qv_lb_enable_value ) {

    wp_enqueue_script( 'prettyPhoto', $woocommerce->plugin_url() . '/assets/js/prettyPhoto/jquery.prettyPhoto.min.js', array( 'jquery' ), '1.6', true );
    wp_enqueue_style( 'woocommerce_prettyPhoto_css', $woocommerce->plugin_url() . '/assets/css/prettyPhoto.css' );
  }
}
add_action( 'wp_footer', 'xoo_qv_lightbox' );

//Images
add_action( 'xoo-qv-images', 'woocommerce_show_product_sale_flash', 10 );
add_action( 'xoo-qv-images', 'woocommerce_show_product_images', 20 );

// Summary
add_action( 'xoo-qv-summary', 'woocommerce_template_single_title', 5 );
add_action( 'xoo-qv-summary', 'woocommerce_template_single_rating', 10 );
add_action( 'xoo-qv-summary', 'woocommerce_template_single_price', 15 );
add_action( 'xoo-qv-summary', 'woocommerce_template_single_excerpt', 20 );
add_action( 'xoo-qv-summary', 'woocommerce_template_single_add_to_cart', 25 );
add_action( 'xoo-qv-summary', 'woocommerce_template_single_meta', 30 );
if($xoo_qv_gl_pbutton_value){add_action( 'xoo-qv-summary', 'xoo_qv_product_info',35 );}


// Product Details Button
function xoo_qv_product_info(){
	global $xoo_qv_gl_pbutton_text_value;
	$html  = '<div class="xoo-qv-plink">';
	$html .=  '<a href="'.get_permalink().'">'.esc_attr($xoo_qv_gl_pbutton_text_value).'</a>';
	$html .= '</div>';
	echo $html;
}

//Quick View Panel
function xoo_qv_panel(){
	$html  = '<div class="xoo-qv-opac"></div>';
	$html .= '<div class="xoo-qv-panel">';
	$html .= '<div class="xoo-qv-preloader xoo-qv-opl">';
	$html .= '<div class="xoo-qv-speeding-wheel"></div>';
	$html .= '</div>';
	$html .= '<div class="xoo-qv-modal"></div>';
	$html .= '</div>';
	echo $html;
}
add_action('wp_head','xoo_qv_panel');

//Quick View button
function xoo_qv_button(){
	global $xoo_qv_button_text_value , $xoo_qv_btn_icon_value;
	$html  = '<div class="xoo-qv-button" qv-id = "'.get_the_ID().'">';
	$html .= '<div class="xoo-qv-btn-txt">';
	if($xoo_qv_btn_icon_value){
	$html .= '<div class="xoo-qv-btn-icon xooqv-eye xoo-qv"></div>';
	}
	$html .= esc_attr($xoo_qv_button_text_value).'</div>';
	$html .= '</div>';
	echo $html;
}

//Quick View button position
$xoo_qv_button_position_value = esc_attr($xoo_qv_button_position_value);
if($xoo_qv_button_position_value == 'woocommerce_after_shop_loop_item' || $xoo_qv_button_position_value == 'image_hover'){
	add_action('woocommerce_after_shop_loop_item','xoo_qv_button',11); // Quick View button
}
else{
	add_action($xoo_qv_button_position_value,'woocommerce_template_loop_product_link_close',11); //Closing WC link
	add_action($xoo_qv_button_position_value,'xoo_qv_button',11); // Quick View button
	add_action($xoo_qv_button_position_value,'woocommerce_template_loop_product_link_open',11); // Opening WC link
}


//Including Quick View/Ajax Template
require_once plugin_dir_path(__FILE__).'/templates/xoo-qv-ajax.php';

//Stylesheet
function xoo_qv_styles(){
	global $xoo_qv_button_color_value , $xoo_qv_img_width_value , $xoo_qv_btn_iconc_value , $xoo_qv_button_fsize_value,$xoo_qv_button_position_value;
	$html = '<style>
				.xoo-qv-button{
					background-color: '.esc_attr($xoo_qv_button_color_value).';
					font-size: '.esc_attr($xoo_qv_button_fsize_value).'px;
				}
				.woocommerce div.product .xoo-qv-images  div.images{
					width: '.esc_attr($xoo_qv_img_width_value).'%;
				}
				.xoo-qv-btn-icon{
					color: '.esc_attr($xoo_qv_btn_iconc_value).';
				}';
	if($xoo_qv_button_position_value == 'image_hover'){
		$html .= '.xoo-qv-button{
						opacity: 0;
						width: 100%;
				}';
	}
	$html .= '</style>';
	echo $html;
}
add_action('wp_head','xoo_qv_styles',99);


?>
