<?php
/**
 ========================
      ADMIN SETTINGS
 ========================
 */

//Exit if accessed directly
if(!defined('ABSPATH')){
	return;
}

// Enqueue Scripts & Stylesheet
function xoo_qv_admin_enqueue($hook){
	if('toplevel_page_xoo_quickview' != $hook){
		return;
	}
	wp_enqueue_style('xoo-qv-admin-css',plugins_url('/assets/css/xoo-qv-admin-css.css',__FILE__),null,'1.6');
	wp_enqueue_style('wp-color-picker');
	wp_enqueue_script('xoo-qv-admin-js',plugins_url('/assets/js/xoo-qv-admin-js.js',__FILE__),array('jquery','wp-color-picker'),'1.6',true);
}
add_action('admin_enqueue_scripts','xoo_qv_admin_enqueue');

//Settings page
function xoo_qv_menu_settings(){
	add_menu_page( 'Quick View Settings', 'Quick View', 'manage_options', 'xoo_quickview', 'xoo_qv_settings_cb', 'dashicons-visibility', 61 );
	add_action('admin_init','xoo_qv_settings');
}
add_action('admin_menu','xoo_qv_menu_settings');

//Settings callback function
function xoo_qv_settings_cb(){
	include plugin_dir_path(__FILE__).'xoo-qv-settings.php';
}

//Custom settings
function xoo_qv_settings(){

	register_setting(
		'xoo-qv-group',
	 	'xoo-qv-button-text');

	register_setting(
		'xoo-qv-group',
	 	'xoo-qv-button-fsize');

	register_setting(
		'xoo-qv-group',
		'xoo-qv-button-position');

	register_setting(
		'xoo-qv-group',
		'xoo-qv-button-color');

	register_setting(
		'xoo-qv-group',
		'xoo-qv-btn-icon');

	register_setting(
		'xoo-qv-group',
		'xoo-qv-btn-iconc');

	register_setting(
		'xoo-qv-group',
		'xoo-qv-img-width');

	register_setting(
		'xoo-qv-group',
		'xoo-qv-gl-mobile');

	register_setting(
		'xoo-qv-group',
		'xoo-qv-gl-anim');

	register_setting(
		'xoo-qv-group',
		'xoo-qv-gl-pbutton');

	register_setting(
		'xoo-qv-group',
		'xoo-qv-gl-pbutton-text');

	register_setting(
		'xoo-qv-group',
		'xoo-qv-lb-enable');

	register_setting(
		'xoo-qv-group',
		'xoo-qv-lb-title');

	add_settings_section(
		'xoo-qv-style',
		'',
		'xoo_qv_style_cb',
		'xoo_quickview');

	add_settings_section(
		'xoo-qv-gl',
		'',
		'xoo_qv_gl_cb',
		'xoo_quickview');

	add_settings_section(
		'xoo-qv-lb',
		'',
		'xoo_qv_lb_cb',
		'xoo_quickview');

	add_settings_field(
		'xoo-qv-button-text',
		__('Quick View text','xoo-qv-domain'),
		'xoo_qv_button_text_cb',
		'xoo_quickview',
		'xoo-qv-style');

	add_settings_field(
		'xoo-qv-button-fsize',
		__('Quick View font size','xoo-qv-domain'),
		'xoo_qv_button_fsize_cb',
		'xoo_quickview',
		'xoo-qv-style');

	add_settings_field(
		'xoo-qv-button-position',
		__('Quick View button position','xoo-qv-domain'),
		'xoo_qv_button_position_cb',
		'xoo_quickview',
		'xoo-qv-style');

	add_settings_field(
		'xoo-qv-button-color',
		__('Quick View button color','xoo-qv-domain'),
		'xoo_qv_button_color_cb',
		'xoo_quickview',
		'xoo-qv-style');

	add_settings_field(
		'xoo-qv-btn-icon',
		__('Quick View button icon','xoo-qv-domain'),
		'xoo_qv_btn_icon_cb',
		'xoo_quickview',
		'xoo-qv-style');

	add_settings_field(
		'xoo-qv-btn-iconc',
		__('Icon Color','xoo-qv-domain'),
		'xoo_qv_btn_iconc_cb',
		'xoo_quickview',
		'xoo-qv-style');

	add_settings_field(
		'xoo-qv-img-width',
		__('Product images width','xoo-qv-domain'),
		'xoo_qv_img_width_cb',
		'xoo_quickview',
		'xoo-qv-style');

	add_settings_field(
		'xoo-qv-gl-mobile',
		__('Enable on mobile','xoo-qv-domain'),
		'xoo_qv_gl_mobile_cb',
		'xoo_quickview',
		'xoo-qv-gl');

	add_settings_field(
		'xoo-qv-gl-anim',
		__('Select Animation','xoo-qv-domain'),
		'xoo_qv_gl_anim_cb',
		'xoo_quickview',
		'xoo-qv-gl');

	add_settings_field(
		'xoo-qv-lb-pbutton',
		__('Product link button','xoo-qv-domain'),
		'xoo_qv_gl_pbutton_cb',
		'xoo_quickview',
		'xoo-qv-gl');

	add_settings_field(
		'xoo-qv-lb-pbutton-text',
		__('Product link button text','xoo-qv-domain'),
		'xoo_qv_gl_pbutton_text_cb',
		'xoo_quickview',
		'xoo-qv-gl');

	add_settings_field(
		'xoo-qv-lb-enable',
		__('Enable Lightbox','xoo-qv-domain'),
		'xoo_qv_lb_enable_cb',
		'xoo_quickview',
		'xoo-qv-lb');

	add_settings_field(
		'xoo-qv-lb-title',
		__('Show image title','xoo-qv-domain'),
		'xoo_qv_lb_title_cb',
		'xoo_quickview',
		'xoo-qv-lb');

	add_settings_section(
		'xoo-qv-end-tab',
		'',
		'xoo_qv_end_tab_cb',
		'xoo_quickview');

}

/***** Custom Settings Callback *****/

//Style Section callback
function xoo_qv_style_cb(){
	?>

<?php 	/** Settings Tab **/ ?>
	<div class="xoo-qv-tabs">
		<ul>
			<li class="tab-1 active-tab"><?php _e('Basic','xoo-qv-domain') ?></li>
			<li class="tab-2"><?php _e('Advanced','xoo-qv-domain') ?></li>
		</ul>
	</div>

<?php 	/** Settings Tab **/ ?>

	<?php
	$tab = '<div class="basic-settings settings-tab settings-tab-active" tab-class ="tab-1">';  //Begin Basic settings
	echo $tab.'<h2>'.__('Style Options','xoo-qv-domain').'</h2>';
}

//General Settings callback
function xoo_qv_gl_cb(){
	echo '<h2>'.__('General Options','xoo-qv-domain').'</h2>';
}

//Lightbox Section callback
function xoo_qv_lb_cb(){
	echo '<h2>'.__('LightBox Settings','xoo-qv-domain').'</h2>';
}

//End Basic Settings
function xoo_qv_end_tab_cb(){
	$tab = '</div>';
	echo $tab;
}

//Button text
$xoo_qv_button_text_value = sanitize_text_field(get_option('xoo-qv-button-text', __('Quick View','xoo-qv-domain')));
function xoo_qv_button_text_cb(){
	global $xoo_qv_button_text_value;
	$html = '<input type="text" class="xoo-qv-input" name="xoo-qv-button-text" value="'.$xoo_qv_button_text_value.'">';
	$html .= '<label for = "xoo-qv-button-text">'.__('Label for quick view button.','xoo-qv-domain').'</label>';
	echo $html;
}

//Font size
$xoo_qv_button_fsize_value = sanitize_text_field(get_option('xoo-qv-button-fsize'));
function xoo_qv_button_fsize_cb(){
	global $xoo_qv_button_fsize_value;
	$html =  '<input type="number" class="xoo-qv-input" name="xoo-qv-button-fsize" value="'.$xoo_qv_button_fsize_value.'">';
	$html .= '<label for ="xoo-qv-button-fsize">'.__('Quick View button & icon font size.','xoo-qv-domain').'</label>';
	$html .= '<p class="description">'.__('Size in px (For eg: 13 , 14 , 20)','xoo-qv-domain').'</p>';
	echo $html;
}


//Button Position
$xoo_qv_button_position_value = sanitize_text_field(
									get_option('xoo-qv-button-position','
												woocommerce_after_shop_loop_item'));
function xoo_qv_button_position_cb(){
	global $xoo_qv_button_position_value;
	?>
	<select name="xoo-qv-button-position" class="xoo-qv-input">

		<?php $after_image = 'woocommerce_before_shop_loop_item_title'; ?>
		<option value="<?php echo $after_image ?>" <?php selected($xoo_qv_button_position_value,$after_image); ?> ><?php _e('After product image','xoo-qv-domain'); ?></option>

		<?php $after_title = 'woocommerce_shop_loop_item_title'; ?>
		<option value="<?php echo $after_title ?>" <?php selected($xoo_qv_button_position_value,$after_title); ?>><?php _e('After product title','xoo-qv-domain'); ?></option>

		<?php $after_price = 'woocommerce_after_shop_loop_item_title'; ?>
		<option value="<?php echo $after_price ?>" <?php selected($xoo_qv_button_position_value,$after_price); ?>><?php _e('After product price','xoo-qv-domain'); ?></option>

		<?php $after_cart = 'woocommerce_after_shop_loop_item'; ?>
		<option value="<?php echo $after_cart ?>" <?php selected($xoo_qv_button_position_value,$after_cart); ?>><?php _e('After product cart button','xoo-qv-domain'); ?></option>

		<?php $image_hover = 'image_hover'; ?>
		<option value="<?php echo $image_hover ?>" <?php selected($xoo_qv_button_position_value,$image_hover); ?>><?php _e('On Image hover','xoo-qv-domain'); ?></option>

	</select>
	<label for = "xoo-qv-button-position"><?php _e('Position of quick view button on archive.','xoo-qv-domain'); ?></label>
	<p class="description imgh-alert">Image hover may not work properly with some themes.</p>

	<?php
}

//Button Color
$xoo_qv_button_color_value = sanitize_text_field(get_option('xoo-qv-button-color','#2D84D4'));
function xoo_qv_button_color_cb(){
	global $xoo_qv_button_color_value;
	$html = '<input type="text" class="color-field" name="xoo-qv-button-color" value="'.$xoo_qv_button_color_value.'" >';
	echo $html;
}

//Button icon
$xoo_qv_btn_icon_value = sanitize_text_field(get_option('xoo-qv-btn-icon','true'));
function xoo_qv_btn_icon_cb(){
	global $xoo_qv_btn_icon_value;
	$html  = '<input type="checkbox" name="xoo-qv-btn-icon" id ="xoo-qv-btn-icon" value="true"'.checked('true',$xoo_qv_btn_icon_value,false).'>';
	$html .= '<label for="xoo-qv-btn-icon">'.__('Enable Quick view Button icon.','xoo-qv-domain').'</label>';
	echo $html;
}

//Button icon color
$xoo_qv_btn_iconc_value = sanitize_text_field(get_option('xoo-qv-btn-iconc','#ffffff'));
function xoo_qv_btn_iconc_cb(){
	global $xoo_qv_btn_iconc_value;
	$html = '<input type="text" class="color-field" name="xoo-qv-btn-iconc" value="'.$xoo_qv_btn_iconc_value.'" >';
	echo $html;
}



//Product Images Width
$xoo_qv_img_width_value = sanitize_text_field(get_option('xoo-qv-img-width','100'));
function xoo_qv_img_width_cb(){
	global $xoo_qv_img_width_value;
	$html =  '<input type="number" class="xoo-qv-input" name="xoo-qv-img-width" value="'.$xoo_qv_img_width_value.'">';
	$html .= '<label for ="xoo-qv-img-width">'.__('Width of woocommerce product images.','xoo-qv-domain').'</label>';
	$html .= '<p class="description">'.__('Default: 100 (Value is in percentage.)','xoo-qv-domain').'</p>';
	echo $html;
}

//Enable on mobile device
$xoo_qv_gl_mobile_value = sanitize_text_field(get_option('xoo-qv-gl-mobile','true'));
function xoo_qv_gl_mobile_cb(){
	global $xoo_qv_gl_mobile_value;
	$html  = '<input type="checkbox" name="xoo-qv-gl-mobile" id ="xoo-qv-gl-mobile" value="true"'.checked('true',$xoo_qv_gl_mobile_value,false).'>';
	$html .= '<label for="xoo-qv-gl-mobile">'.__('Enable Quick view on mobile devices.','xoo-qv-domain').'</label>';
	echo $html;
}

//Modal Animation
$xoo_qv_gl_anim_value = sanitize_text_field(get_option('xoo-qv-gl-anim','linear'));
function xoo_qv_gl_anim_cb(){
	global $xoo_qv_gl_anim_value;
	?>
	<select name="xoo-qv-gl-anim" class="xoo-qv-input">
		<option value="none" <?php selected($xoo_qv_gl_anim_value,'none'); ?> ><?php _e('None','xoo-qv-domain'); ?></option>
		<option value="linear" <?php selected($xoo_qv_gl_anim_value,'linear'); ?> >Linear</option>
		<option value="fade-in" <?php selected($xoo_qv_gl_anim_value,'fade-in'); ?> >Fade-In</option>
		<option value="bounce-in" disabled>Bounce-In (Premium)</option>
	</select>
	<?php
	echo '<label for="xoo-qv-gl-anim">'.__('Quick View Modal (Box) Animation.','xoo-qv-domain').'</label>';
}

//Product info button
$xoo_qv_gl_pbutton_value = sanitize_text_field(get_option('xoo-qv-gl-pbutton','true'));
function xoo_qv_gl_pbutton_cb(){
	global $xoo_qv_gl_pbutton_value;
	$html = '<input type="checkbox" id="xoo-qv-gl-pbutton" value="true" name="xoo-qv-gl-pbutton" '.checked('true',$xoo_qv_gl_pbutton_value,false).'>';
	$html .= '<label for="xoo-qv-gl-pbutton">'.__('Link to the current product','xoo-qv-domain').'</label>';
	echo $html;
}

//Product info button text
$xoo_qv_gl_pbutton_text_value = sanitize_text_field(get_option('xoo-qv-gl-pbutton-text',__('Product Details','xoo-qv-domain')));
function xoo_qv_gl_pbutton_text_cb(){
	global $xoo_qv_gl_pbutton_text_value;
	$html = '<input type="text" name="xoo-qv-gl-pbutton-text"  value="'.$xoo_qv_gl_pbutton_text_value.'">';
	$html .= '<label for="xoo-qv-gl-pbutton-text">'.__('Label for product link button.','xoo-qv-domain').'</label>';
	echo $html;
}

//Lightbox Enable
$xoo_qv_lb_enable_value = sanitize_text_field(get_option('xoo-qv-lb-enable','true'));
function xoo_qv_lb_enable_cb(){
	global $xoo_qv_lb_enable_value;
	$html  = '<input type="checkbox" id="xoo-qv-lb-enable" name="xoo-qv-lb-enable" value="true" '.checked('true',$xoo_qv_lb_enable_value,false).'>';
	$html .= '<label for = "xoo-qv-lb-enable">'.__('Product Images will open in lightbox.','xoo-qv-domain').'</label>';
	echo $html;
}

//Lightbox Image title
$xoo_qv_lb_title_value = sanitize_text_field(get_option('xoo-qv-lb-title','true'));
function xoo_qv_lb_title_cb (){
	global $xoo_qv_lb_title_value;

	$html = '<input type="checkbox" name="xoo-qv-lb-title" id="xoo-qv-lb-title" value="true"'.checked('true',$xoo_qv_lb_title_value,false).'>';
	$html .= '<label for = "xoo-qv-lb-title">'.__('Show image title.','xoo-qv-domain').'</label>';
	echo $html;
}


?>