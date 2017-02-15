<?php
/**
 * My Account Dashboard
 *
 * Shows the first intro screen on the account dashboard.
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/myaccount/dashboard.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see         https://docs.woocommerce.com/document/template-structure/
 * @author      WooThemes
 * @package     WooCommerce/Templates
 * @version     2.6.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}
?>

<h3 class="title-my_account"><?=sprintf( esc_attr__( 'Hello %s', 'woocommerce' ),esc_html( $current_user->display_name ));?></h3>

<p class="customer_logout">
	<?php
		echo sprintf( esc_attr__( 'Not %s? %sSign out%s', 'woocommerce' ), esc_html( $current_user->display_name ), '<a href="' . esc_url( wc_logout_url( wc_get_page_permalink( 'myaccount' ) ) ) . '">', '</a>' );
	?>
</p>

<!--<p>
	<?php
		echo sprintf( esc_attr__( 'From your account dashboard you can view your %1$srecent orders%2$s, manage your %3$sshipping and billing addresses%2$s and %4$sedit your password and account details%2$s.', 'woocommerce' ), '<a href="' . esc_url( wc_get_endpoint_url( 'orders' ) ) . '">', '</a>', '<a href="' . esc_url( wc_get_endpoint_url( 'edit-address' ) ) . '">', '<a href="' . esc_url( wc_get_endpoint_url( 'edit-account' ) ) . '">' );
	?>
</p>-->

<p>From your account dashboard you can do following:</p>
<ul>
	<li><a href="<?=esc_url( wc_get_endpoint_url( 'orders' ) )?>">View your recent orders</a></li>
    <li><a href="<?=esc_url( wc_get_endpoint_url( 'edit-address' ) )?>">Manage your shipping and billing addresses</a></li>
    <li><a href="<?=esc_url( wc_get_endpoint_url( 'edit-account' ) )?>">Edit your password and account details</a></li>
</ul>

<?php
	/**
	 * My Account dashboard.
	 *
	 * @since 2.6.0
	 */
	do_action( 'woocommerce_account_dashboard' );

	/**
	 * Deprecated woocommerce_before_my_account action.
	 *
	 * @deprecated 2.6.0
	 */
	do_action( 'woocommerce_before_my_account' );

	/**
	 * Deprecated woocommerce_after_my_account action.
	 *
	 * @deprecated 2.6.0
	 */
	do_action( 'woocommerce_after_my_account' );
?>
