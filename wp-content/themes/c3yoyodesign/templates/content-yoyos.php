<section class="yoyos_content">
	<?php get_template_part('templates/page', 'header'); ?>
    <div class="product_container">
    	<div class="container">
            <div class="product_filtering">
            	<div class="clearfix">
                	<div class="filter_block">
                        <label>Sort by:</label>
                        <select>
                            <option>123</option>
                            <option>123</option>
                            <option>123</option>
                        </select>
                    </div>
                    <div class="filter_block">
                    	<label>Line up:</label>
                        <select>
                            <option>123</option>
                            <option>123</option>
                            <option>123</option>
                        </select>
                    </div>
                </div>
			</div>
            
            <div class="yoyos_product_container clearfix">
				<?php
				$args = array( 'numberposts' => 4, 'post_type' => 'c3_product', 'post_status' => 'publish', 'order' => 'DESC', 'orderby' => 'date', 'suppress_filters' => 0);
				$results = get_posts( $args );
				foreach( $results as $result ) : 
					$term_list = wp_get_post_terms($result->ID, 'line-up', array("fields" => "names"));
					$logo = get_field('logo', $result->ID);
					//print_r($term_list);
				?>
					<div class="product_item col-sm-3">
                    	<div class="product_content">
                            <div class="product_image">
                            	<figure>
	                                <?php echo get_the_post_thumbnail($result->ID, 'full', array( 'class' => 'img-responsive' ) ); ?>
                                </figure>
                                <div class="logo_overlay">
                                	<img src="<?=$logo['url']?>" class="img-responsive" />
                                </div>
                            </div>
                            <div class="product_detail">
                                <div class="product_name"><?=get_the_title($result->ID);?></div>
                                <div class="product_series"><?=$term_list[0];?> Series</div>
                            </div>
                            <a href="<?=get_permalink($result->ID);?>" class="overlay_link"></a>
                    	</div>
					</div>
				<?php endforeach; ?>
            </div>
    	</div>
    </div>
</section>