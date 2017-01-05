<section class="main_content">
	<div class="banner_container">
    	<div class="banner_content">
            <div class="banner_item" style="background-image:url(<?=get_stylesheet_directory_uri()?>/assets/img/img_banner_dummy.png);">
                <div style="position:absolute; height:100%; width:200%; left:-50%;">
                    <video id="feature_video" poster="<?=get_stylesheet_directory_uri()?>/assets/img/img_banner_dummy.png" class="lg-video-object lg-html5" preload="auto" autoplay="autoplay" muted="muted" loop>
                        <source src="<?=get_stylesheet_directory_uri()?>/assets/img/fingerspin.mp4" type="video/mp4">
                         Your browser does not support HTML5 video.
                    </video>
                    <div class="video_mask"></div>
                </div>
                <div class="banner_text">
                	<div class="clearfix">
                        <div class="banner_content_type">news</div>
                        <div class="banner_content_text">
                            <div class="text_title">
                                <h2>RAILGUN<br />IMAGINE BREAKER</h2>
                            </div>
                            <div class="text_content">
                                <p>RAILGUN FIRST RELEASE ON YOYOREWIND<br />2016.01.01</p>
                                <div class="more_link">
                                    <a href="#" class="btn_more">see more</a>
                                </div>
                            </div>
                        </div>
                	</div>
                </div>
            </div>
            <div class="banner_item" style="background-image:url(<?=get_stylesheet_directory_uri()?>/assets/img/img_banner_dummy.png);">
                <div class="banner_text">
                	<div class="clearfix">
                        <div class="banner_content_type">news</div>
                        <div class="banner_content_text">
                            <div class="text_title">
                                <h2>RAILGUN<br />IMAGINE BREAKER 2</h2>
                            </div>
                            <div class="text_content">
                                <p>RAILGUN FIRST RELEASE ON YOYOREWIND<br />2016.01.01</p>
                                <div class="more_link">
                                    <a href="#" class="btn_more">see more</a>
                                </div>
                            </div>
                        </div>
                	</div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="home_content">
	<div class="news_container">
    	<div class="container">
        	<div class="news_header clearfix">
            	<div class="news_title col-sm-3">
	            	<h2>NEWS</h2>
                </div>
                <div class="news_category_wrapper col-sm-9">
                	<div class="news_category">
	                	<span>VIEW BY CATEGORY</span>
                        <ul>
                        	<li><a href="<?=$full_uri?>">All</a></li>
                        <?php 
							$args = array(
								'orderby' => 'name',
								'parent' => 0,
								'hide_empty' => 0,
							);
							$categories = get_categories( $args );
							
							$full_uri = get_permalink(6);
							
							foreach ( $categories as $category ) {
								if ( $category->cat_ID == 1 ){
							        continue; // skip 'uncategorized'
								}
								echo '<li><a href="'.$full_uri.'?category='.$category->cat_ID.'">'.$category->name.'</a></li>';
							}
							
						?>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="news_grid_wrapper">
                <div class="news_grid" id="news_container">
                    <!-- isotope -->
                    <div class="news_item item-width2">
                        <div class="item_image">
                            <figure>
                                <a href="#"><img class="img-responsive" src="<?=get_stylesheet_directory_uri()?>/assets/img/img_post_dummy.jpg" /></a>
                            </figure>
                        </div>
                        <div class="item_content">
                            <div class="item_title"><a href="#">RAILGUN & IMAGINE BREAKER RAILGUN & IMAGINE BREAKER 1</a></div>
                            <div class="item_detail">
                                <span class="item_category">PRODUCT</span> / <span class="item_date">2016.01.11</span>
                            </div>
                        </div>
                    </div>
                    <div class="news_item">
                        <div class="item_image">
                            <figure>
                                <a href="#"><img class="img-responsive" src="<?=get_stylesheet_directory_uri()?>/assets/img/img_post_dummy.jpg" /></a>
                            </figure>
                        </div>
                        <div class="item_content">
                            <div class="item_title"><a href="#">RAILGUN & IMAGINE BREAKER RAILGUN & IMAGINE BREAKER 2</a></div>
                            <div class="item_detail">
                                <span class="item_category">PRODUCT</span> / <span class="item_date">2016.01.11</span>
                            </div>
                        </div>
                    </div>
                    <div class="news_item">
                        <div class="item_image">
                            <figure>
                                <a href="#"><img class="img-responsive" src="<?=get_stylesheet_directory_uri()?>/assets/img/img_post_dummy.jpg" /></a>
                            </figure>
                        </div>
                        <div class="item_content">
                            <div class="item_title"><a href="#">RAILGUN & IMAGINE BREAKER RAILGUN & IMAGINE BREAKER 3</a></div>
                            <div class="item_detail">
                                <span class="item_category">PRODUCT</span> / <span class="item_date">2016.01.11</span>
                            </div>
                        </div>
                    </div>
                    <div class="news_item">
                        <div class="item_image">
                            <figure>
                                <a href="#"><img class="img-responsive" src="<?=get_stylesheet_directory_uri()?>/assets/img/img_post_dummy.jpg" /></a>
                            </figure>
                        </div>
                        <div class="item_content">
                            <div class="item_title"><a href="#">RAILGUN & IMAGINE BREAKER RAILGUN & IMAGINE BREAKER 4</a></div>
                            <div class="item_detail">
                                <span class="item_category">PRODUCT</span> / <span class="item_date">2016.01.11</span>
                            </div>
                        </div>
                    </div>
                    <div class="news_item">
                        <div class="item_image">
                            <figure>
                                <a href="#"><img class="img-responsive" src="<?=get_stylesheet_directory_uri()?>/assets/img/img_post_dummy.jpg" /></a>
                            </figure>
                        </div>
                        <div class="item_content">
                            <div class="item_title"><a href="#">RAILGUN & IMAGINE BREAKER RAILGUN & IMAGINE BREAKER 5</a></div>
                            <div class="item_detail">
                                <span class="item_category">PRODUCT</span> / <span class="item_date">2016.01.11</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="new_more">
            	<a href="<?=get_permalink(6);?>" class="btn_more">More news</a>
            </div>
        </div>
    </div>
    
    <div class="product_container">
    	<div class="container">
            <div class="section_title">
            	<span>Latest Release</span>
            </div>
            <div class="home_product_container clearfix">
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
            <div class="more_link">
                <a href="<?=get_permalink(77);?>" class="btn_more purple">All Yoyos</a>
            </div>
    	</div>
    </div>
    
    <div class="team_container">
    	<div class="container">
        	<div class="section_title">
                <span>Team</span>
            </div>
        </div>
        <div class="team_content">
            <div class="team_item">
                <div class="team_image" style="background-image:url(<?=get_stylesheet_directory_uri()?>/assets/img/img_team_dummy.png); background-size:100% auto; background-repeat:no-repeat; background-position:center; width:100%; padding-bottom:100%;">
                    
                </div>
                <div class="team_name">
                    SHINYA<br />KIDO
                </div>
                <a href="#" class="overlay_link"></a>
            </div>
            <div class="team_item">
                <div class="team_image">
                    <figure>
                        <img src="<?=get_stylesheet_directory_uri()?>/assets/img/img_team_dummy.png" class="img-responsive" />
                    </figure>
                </div>
                <div class="team_name">
                    SHINYA<br />KIDO
                </div>
                <a href="#" class="overlay_link"></a>
            </div>
            <div class="team_item">
                <div class="team_image">
                    <figure>
                        <img src="<?=get_stylesheet_directory_uri()?>/assets/img/img_team_dummy.png" class="img-responsive" />
                    </figure>
                </div>
                <div class="team_name">
                    ETHAN<br />WONG
                </div>
                <a href="#" class="overlay_link"></a>
            </div>
            <div class="team_item">
                <div class="team_image">
                    <figure>
                        <img src="<?=get_stylesheet_directory_uri()?>/assets/img/img_team_dummy.png" class="img-responsive" />
                    </figure>
                </div>
                <div class="team_name">
                    SORA<br />ISHIKAWA
                </div>
                <a href="#" class="overlay_link"></a>
            </div>
            <div class="team_item">
                <div class="team_image">
                    <figure>
                        <img src="<?=get_stylesheet_directory_uri()?>/assets/img/img_team_dummy.png" class="img-responsive" />
                    </figure>
                </div>
                <div class="team_name">
                    PETER<br />PONG1
                </div>
                <a href="#" class="overlay_link"></a>
            </div>
            <div class="team_item">
                <div class="team_image">
                    <figure>
                        <img src="<?=get_stylesheet_directory_uri()?>/assets/img/img_team_dummy.png" class="img-responsive" />
                    </figure>
                </div>
                <div class="team_name">
                    PETER<br />PONG2
                </div>
                <a href="#" class="overlay_link"></a>
            </div>
            <div class="team_item">
                <div class="team_image">
                    <figure>
                        <img src="<?=get_stylesheet_directory_uri()?>/assets/img/img_team_dummy.png" class="img-responsive" />
                    </figure>
                </div>
                <div class="team_name">
                    PETER<br />PONG3
                </div>
                <a href="#" class="overlay_link"></a>
            </div>
            <div class="team_item">
                <div class="team_image">
                    <figure>
                        <img src="<?=get_stylesheet_directory_uri()?>/assets/img/img_team_dummy.png" class="img-responsive" />
                    </figure>
                </div>
                <div class="team_name">
                    PETER<br />PONG4
                </div>
                <a href="#" class="overlay_link"></a>
            </div>
            <div class="team_item">
                <div class="team_image">
                    <figure>
                        <img src="<?=get_stylesheet_directory_uri()?>/assets/img/img_team_dummy.png" class="img-responsive" />
                    </figure>
                </div>
                <div class="team_name">
                    PETER<br />PONG5
                </div>
                <a href="#" class="overlay_link"></a>
            </div>
            <div class="team_item">
                <div class="team_image">
                    <figure>
                        <img src="<?=get_stylesheet_directory_uri()?>/assets/img/img_team_dummy.png" class="img-responsive" />
                    </figure>
                </div>
                <div class="team_name">
                    PETER<br />PONG6
                </div>
                <a href="#" class="overlay_link"></a>
            </div>
            <div class="team_item">
                <div class="team_image">
                    <figure>
                        <img src="<?=get_stylesheet_directory_uri()?>/assets/img/img_team_dummy.png" class="img-responsive" />
                    </figure>
                </div>
                <div class="team_name">
                    PETER<br />PONG7
                </div>
                <a href="#" class="overlay_link"></a>
            </div>
            <div class="team_item">
                <div class="team_image">
                    <figure>
                        <img src="<?=get_stylesheet_directory_uri()?>/assets/img/img_team_dummy.png" class="img-responsive" />
                    </figure>
                </div>
                <div class="team_name">
                    PETER<br />PONG8
                </div>
                <a href="#" class="overlay_link"></a>
            </div>
        </div>
        
        <div class="more_link">
            <a href="#" class="btn_more purple">view all</a>
        </div>
    </div>
</section>