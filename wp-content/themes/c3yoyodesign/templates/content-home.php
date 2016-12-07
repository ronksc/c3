<section class="main_content">
	<div class="banner_container">
    	<div class="banner_content">
            <div class="banner_item" style="background-image:url(<?=get_stylesheet_directory_uri()?>/assets/img/img_banner_dummy.png);">
                <!--<div style="position:absolute; height:100%; width:200%; left:-50%;">
                    <video poster="<?=get_stylesheet_directory_uri()?>/assets/img/img_banner_dummy.png" class="lg-video-object lg-html5" preload="auto" autoplay="autoplay" muted="muted" loop>
                        <source src="<?=get_stylesheet_directory_uri()?>/assets/img/big_buck_bunny.mp4" type="video/mp4">
                         Your browser does not support HTML5 video.
                    </video>
                </div>-->
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
                                    <a href="#">see more</a>
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
                                    <a href="#">see more</a>
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
	    	<div class="news_grid" id="news_container">
            	<!-- isotope -->
                <div class="news_item item-width2">
                	<div class="item_image">
	                	<img class="img-responsive" src="<?=get_stylesheet_directory_uri()?>/assets/img/img_post_dummy.jpg" />
                    </div>
                    <div class="item_content">
                        <div class="item_title">RAILGUN & IMAGINE BREAKER RAILGUN & IMAGINE BREAKER 1</div>
                        <div class="item_detail">
                            <span class="item_category">PRODUCT</span> / <span class="item_date">2016.01.11</span>
                        </div>
                    </div>
                </div>
                <div class="news_item">
                	<div class="item_image">
	                	<img class="img-responsive" src="<?=get_stylesheet_directory_uri()?>/assets/img/img_post_dummy.jpg" />
                    </div>
                    <div class="item_content">
                        <div class="item_title">RAILGUN & IMAGINE BREAKER RAILGUN & IMAGINE BREAKER 2</div>
                        <div class="item_detail">
                            <span class="item_category">PRODUCT</span> / <span class="item_date">2016.01.11</span>
                        </div>
                    </div>
                </div>
                <div class="news_item">
                	<div class="item_image">
	                	<img class="img-responsive" src="<?=get_stylesheet_directory_uri()?>/assets/img/img_post_dummy.jpg" />
                    </div>
                    <div class="item_content">
                        <div class="item_title">RAILGUN & IMAGINE BREAKER RAILGUN & IMAGINE BREAKER 3</div>
                        <div class="item_detail">
                            <span class="item_category">PRODUCT</span> / <span class="item_date">2016.01.11</span>
                        </div>
                    </div>
                </div>
                <div class="news_item">
                	<div class="item_image">
	                	<img class="img-responsive" src="<?=get_stylesheet_directory_uri()?>/assets/img/img_post_dummy.jpg" />
                    </div>
                    <div class="item_content">
                        <div class="item_title">RAILGUN & IMAGINE BREAKER RAILGUN & IMAGINE BREAKER 4</div>
                        <div class="item_detail">
                            <span class="item_category">PRODUCT</span> / <span class="item_date">2016.01.11</span>
                        </div>
                    </div>
                </div>
                <div class="news_item">
                	<div class="item_image">
	                	<img class="img-responsive" src="<?=get_stylesheet_directory_uri()?>/assets/img/img_post_dummy.jpg" />
                    </div>
                    <div class="item_content">
                        <div class="item_title">RAILGUN & IMAGINE BREAKER RAILGUN & IMAGINE BREAKER 5</div>
                        <div class="item_detail">
                            <span class="item_category">PRODUCT</span> / <span class="item_date">2016.01.11</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
    	<div class="">
    		
            
            <div class="product_container">
            	<div class="section_title">PRODUCT</div>
            
            	<div class="feature_product">
                	
                </div>
                
                <div class="clearfix">
                	<div class="col-sm-4 product_item">
                    	<div class="product_image">
                        	<div class="logo_overlay"></div>
                        </div>
                        <div class="product_name"></div>
                    </div>
                </div>
                
                <div class="more_link">
                	<a href="#">...more c3 products</a>
                </div>
            </div>
            
            <div class="team_container">
            	<div class="clearfix">
                	<div class="team_item">
                    	<img src="" class="img-responsive" />
                        <div class="team_name">
                        	SHINYA<br />KIDO
                        </div>
                    </div>
                </div>
                
            	<div class="more_link">
                	<a href="#">- view all -</a>
                </div>
            </div>
        </div>
    </div>
</section>