<?php
	/*$details_page_name = get_field('details_page_name', $post->ID);
	$details_page_description = get_field('details_page_description', $post->ID);*/
	$member_gallery = get_field('team_image', $post->ID);
	
	//print_r($details_page_gallery);
	
	//echo $menu_order;
	
	function wpdocs_custom_taxonomies_terms_name() {
		$post = get_post( $post->ID );
		$post_type = $post->post_type;
		$taxonomies = get_object_taxonomies( $post_type, 'objects' );
		$out = array();
	 
		foreach ( $taxonomies as $taxonomy_slug => $taxonomy ){
			$terms = get_the_terms( $post->ID, $taxonomy_slug );
			if ( ! empty( $terms ) ) {
				foreach ( $terms as $term ) {
					$out[] = $term->name;
				}
			}
		}
		return implode( '', $out );
	}
?>

<section class="team_content_section">
	<div class="team_slider_container">
        <div class="team_slider">
            <?php 
            foreach($member_gallery as $key => $image){?>
                <div class="slider_item" style="background-image:url(<?=$image['url']?>);">
                    <!--<div style="position:absolute; height:100%; width:200%; left:-50%;">
                        <video id="feature_video" poster="<?=get_stylesheet_directory_uri()?>/assets/img/img_banner_dummy.png" class="lg-video-object lg-html5" preload="auto" autoplay="autoplay" muted="muted" loop>
                            <source src="<?=get_stylesheet_directory_uri()?>/assets/img/fingerspin.mp4" type="video/mp4">
                             Your browser does not support HTML5 video.
                        </video>
                        <div class="video_mask"></div>
                    </div>-->
                    <div style="background:url(<?=get_stylesheet_directory_uri()?>/assets/img/mask_pattern.png) repeat; position:absolute; width:100%; height:100%; top:0; left:0"></div>
                </div>
            <?php } ?>
        </div>
        <div class="overlay_text">
            <div class="banner_content_text">
                <div class="text_title">
                    <h2><?php the_title(); ?></h2>
                </div>
                <div class="text_content">
					<?=wpdocs_custom_taxonomies_terms_name();?>
                </div>
            </div>
        </div>
        <div class="scroll_down hidden-xs hidden-sm visible-md visible-lg visible-xl">
        	<a href="#"><span>More</span><i class="fa fa-chevron-down" aria-hidden="true"></i></a>
        </div>
    </div>
    <div id="content_start" class="breadcrumb_container" style="background:url('<?=get_stylesheet_directory_uri()?>/assets/img/black_paper.png') repeat;">
        <div class="container">
            <div style="padding:15px 0">
                <a href="#" style="color:#fff"><i class="fa fa-chevron-left" aria-hidden="true"></i> Back to Team C3</a>
            </div>
        </div>
    </div>
	<div class="container">
        <div class="team_member_content col-sm-10 col-sm-push-1 col-lg-10 col-lg-push-1 col-xl-8 col-xl-push-2">
            <div class="clearfix member_header">
                <div class="member_name">
                    <h2><?php the_title(); ?></h2>
                </div>
                <div class="team_connect">
                	<?php
                    	$gender = get_field('gender', $post->ID);
						
						if($gender == 'male'){
							$personal = 'him';	
						}else{
							$personal = 'her';		
						}
					?>
                    <span>Follow <?=$personal?> </span>
                    <ul>
                        <li><a href="#"><i class="fa fa-facebook-official" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="clearfix">
                <div class="bio_content col-sm-6">
                	<h4>Biography</h4>
                    <?php
                    // check if the repeater field has rows of data
                    if( have_rows('details') ):
                        // loop through the rows of data
                        while ( have_rows('details') ) : the_row(); ?>
                        <div class="bio_detail">
                            <p><span class="col_title"><?php the_sub_field('item_name')?> : </span><span class="col_content"><?php the_sub_field('item_content'); ?></span></p>
                        </div>
                    <?php
                        endwhile;
                    endif;
                    ?>
                </div>
                <div class="bio_content col-sm-6">
                	<h4>Achievement</h4>
                    <?php
                    // check if the repeater field has rows of data
                    if( have_rows('contest_title') ):
                        // loop through the rows of data
                        while ( have_rows('contest_title') ) : the_row(); ?>
                        <div class="bio_detail">
                            <p class="col_content"><?php the_sub_field('year')?> - <?php the_sub_field('name'); ?> <?php the_sub_field('division'); ?> <?php the_sub_field('place'); ?></p>
                        </div>
                    <?php
                        endwhile;
                    endif;
                    ?>
                </div>
        	</div>
        </div>
	</div>
</section>
<section class="related_topic">
	<div class="container">
    	<div class="section_header">
        	<h3><span><?php the_title(); ?> news</span></h3>
        </div>
        <div class="clearfix related_topic_slider">
            <div class="related_topic_item">
            	<div class="topic_feature_img">
                	<figure>
                        <a href="#"><img class="img-responsive" src="<?=get_stylesheet_directory_uri()?>/assets/img/img_post_dummy.jpg" /></a>
                    </figure>
                </div>
                <div class="related_topic_title">
                	<h3>Peter New Video</h3>
                    <span class="date">2017-1-5</span>
                </div>
                <div class="topic_excerpt">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</div>
            </div>
            <div class="related_topic_item">
            	<div class="topic_feature_img">
                	<figure>
                        <a href="#"><img class="img-responsive" src="<?=get_stylesheet_directory_uri()?>/assets/img/img_post_dummy.jpg" /></a>
                    </figure>
                </div>
                <div class="related_topic_title">
                	<h3>New Release: Gamma Crash</h3>
                    <span class="date">2017-1-5</span>
                </div>
                <div class="topic_excerpt">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</div>
            </div>
            <div class="related_topic_item">
            	<div class="topic_feature_img">
                	<figure>
                        <a href="#"><img class="img-responsive" src="<?=get_stylesheet_directory_uri()?>/assets/img/img_post_dummy.jpg" /></a>
                    </figure>
                </div>
                <div class="related_topic_title">
                	<h3>New Release: Gamma Crash</h3>
                    <span class="date">2017-1-5</span>
                </div>
                <div class="topic_excerpt">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</div>
            </div>
            <div class="related_topic_item">
            	<div class="topic_feature_img">
                	<figure>
                        <a href="#"><img class="img-responsive" src="<?=get_stylesheet_directory_uri()?>/assets/img/img_post_dummy.jpg" /></a>
                    </figure>
                </div>
                <div class="related_topic_title">
                	<h3>New Release: Gamma Crash</h3>
                    <span class="date">2017-1-5</span>
                </div>
                <div class="topic_excerpt">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</div>
            </div>
            <div class="related_topic_item">
            	<div class="topic_feature_img">
                	<figure>
                        <a href="#"><img class="img-responsive" src="<?=get_stylesheet_directory_uri()?>/assets/img/img_post_dummy.jpg" /></a>
                    </figure>
                </div>
                <div class="related_topic_title">
                	<h3>New Release: Gamma Crash</h3>
                    <span class="date">2017-1-5</span>
                </div>
                <div class="topic_excerpt">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</div>
            </div>
        </div>
    </div>
</section>
<section class="related_product">
	<div class="container">
    	<div class="section_header">
        	<h3><span><?php the_title(); ?> 's Favorite</span></h3>
        </div>
        <div class="clearfix">
        	<?php
            	$favorite_yoyos = get_field('favorite_yoyo', $post->ID);
				$yoyos_id = array();
				
				foreach($favorite_yoyos as $yoyo){
					//echo '<p>'.$yoyo->ID.'</p>';	
					$yoyos_id[] = $yoyo->ID;
				}
				
				$yoyos_id_str = implode(',', $yoyos_id);
				
				echo do_shortcode('[products ids="'.$yoyos_id_str.'"]');
			?>
        </div>
    </div>
</section>