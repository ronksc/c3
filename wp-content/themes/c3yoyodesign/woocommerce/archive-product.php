<?php
/**
 * The Template for displaying product archives, including the main shop page which is a post type archive
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/archive-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see 	    https://docs.woocommerce.com/document/template-structure/
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     2.0.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

//get_header( 'shop' ); ?>
	<?php
		/**
		 * woocommerce_before_main_content hook.
		 *
		 * @hooked woocommerce_output_content_wrapper - 10 (outputs opening divs for the content)
		 * @hooked woocommerce_breadcrumb - 20
		 */
		remove_action('woocommerce_before_main_content', 'woocommerce_breadcrumb', 20);
		do_action( 'woocommerce_before_main_content' );
		
		//add_filter('woocommerce_show_page_title', false);
	?>
    <div class="container">
        <?php if ( apply_filters( 'woocommerce_show_page_title', true ) ) : ?>
		<div class="shop_title_wrapper">
	        <h1 class="page-title"><?php woocommerce_page_title(); ?></h1>
            <div class="title-elements">
            	<?php
                	add_action('woocommerce_after_page_title_breadcumb', 'woocommerce_breadcrumb',20);
					do_action( 'woocommerce_after_page_title_breadcumb' );
				?>
            </div>
        </div>
        <?php endif; ?>
        
        <?php if ( have_posts() ) : ?>
    			<div class="shop_sorting clearfix">
                <?php
                    /**
                     * woocommerce_before_shop_loop hook.
                     *
                     * @hooked woocommerce_result_count - 20
                     * @hooked woocommerce_catalog_ordering - 30
                     */
					
					remove_action('woocommerce_before_shop_loop', 'woocommerce_result_count',20);
					remove_action('woocommerce_before_shop_loop', 'woocommerce_catalog_ordering',30);
					
					//add_action('woocommerce_before_shop_loop', 'woocommerce_catalog_ordering',20);
					//add_action('woocommerce_before_shop_loop', 'woocommerce_result_count',30);
					
					add_action('woocommerce_shop_sort_catalog_ordering', 'woocommerce_catalog_ordering',20);
					echo '<div class="filter_element">';
						do_action('woocommerce_shop_sort_catalog_ordering');
					echo '</div>';
					
					echo '<div class="filter_element">';
						remove_action( 'woocommerce_before_shop_loop', 'wc_print_notices', 10 ); /*Archive Product*/
						remove_action( 'woocommerce_before_single_product', 'wc_print_notices', 10 ); /*Single Product*/
	                    do_action( 'woocommerce_before_shop_loop' );
					echo '</div>';
					
					add_action('woocommerce_shop_result_count', 'woocommerce_result_count',30); 
					echo '<div class="filter_element result_count_wrapper">';
						echo '<div class="result_count">';
							do_action('woocommerce_shop_result_count');
						echo '</div>';	
					echo '</div>';
                ?>
    			</div>
                <div id="toggle_sidebar">Show Sidebar</div>
        <?php endif; ?>
        <div class="clearfix archive_product_container">
            <div id="filter_sidebar" class="col-xs-12 col-sm-2 filter-container">
            	<div class="close-sidebar">Sidebar</div>
                <!--<div class="filter_toggle visible-xs visible-sm hidden-md hidden-lg">Filter</div>-->
                <div class="filter_wrapper">
                    <div class="filter_content">
                        <?php dynamic_sidebar( 'product_filter_menu' ); ?>
                    </div>
                </div>
            </div>
            <div class="col-sm-10 noPadding" id="shop_product_container">
            <?php
                /**
                 * woocommerce_archive_description hook.
                 *
                 * @hooked woocommerce_taxonomy_archive_description - 10
                 * @hooked woocommerce_product_archive_description - 10
                 */
                do_action( 'woocommerce_archive_description' );
            ?>
    
            <?php if ( have_posts() ) : ?>
                <?php
                    /**
                     * woocommerce_before_shop_loop hook.
                     *
                     * @hooked woocommerce_result_count - 20
                     * @hooked woocommerce_catalog_ordering - 30
                     */
                    //do_action( 'woocommerce_before_shop_loop' );
                ?>
                <?php woocommerce_product_loop_start(); ?>
    
                    <?php woocommerce_product_subcategories(); ?>
    
                    <?php while ( have_posts() ) : the_post(); ?>
    
                        <?php wc_get_template_part( 'content', 'product' ); ?>
    
                    <?php endwhile; // end of the loop. ?>
    
                <?php woocommerce_product_loop_end(); ?>
    
                <?php
                    /**
                     * woocommerce_after_shop_loop hook.
                     *
                     * @hooked woocommerce_pagination - 10
                     */
                    do_action( 'woocommerce_after_shop_loop' );
                ?>
    
                <?php elseif ( ! woocommerce_product_subcategories( array( 'before' => woocommerce_product_loop_start( false ), 'after' => woocommerce_product_loop_end( false ) ) ) ) : ?>
        
                    <?php wc_get_template( 'loop/no-products-found.php' ); ?>
        
                <?php endif; ?>
        
            <?php
                /**
                 * woocommerce_after_main_content hook.
                 *
                 * @hooked woocommerce_output_content_wrapper_end - 10 (outputs closing divs for the content)
                 */
                do_action( 'woocommerce_after_main_content' );
            ?>
        
            <?php
                /**
                 * woocommerce_sidebar hook.
                 *
                 * @hooked woocommerce_get_sidebar - 10
                 */
                //do_action( 'woocommerce_sidebar' );
            ?>
            </div>
        </div>
    </div>
<div style="display:none;">
	<?php get_footer( 'shop' ); ?>
</div>
