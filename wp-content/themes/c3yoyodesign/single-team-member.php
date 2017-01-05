<?php
	/*$details_page_name = get_field('details_page_name', $post->ID);
	$details_page_description = get_field('details_page_description', $post->ID);*/
	$member_gallery = get_field('team_image', $post->ID);
	
	//print_r($details_page_gallery);
	
	//echo $menu_order;
?>
<section class="team_content_section">
	<div class="container">
        <div class="team_slider">
            <?php 
			foreach($member_gallery as $key => $image){?>
				<div class="slider_item">
					<img src="<?=$image['url']?>" class="img-responsive" />
				</div>
			<?php } ?>
        </div>
        
        
        <div class="team_member_content col-sm-10 col-sm-push-1 col-lg-10 col-lg-push-1 col-xl-8 col-xl-push-2">
            <div class="clearfix member_header">
                <div class="member_name">
                    <h2><?php the_title(); ?>'s Bio</h2>
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
            <div class="bio_content">
            	<?php
				// check if the repeater field has rows of data
				if( have_rows('details') ):
					// loop through the rows of data
					while ( have_rows('details') ) : the_row(); ?>
					<div class="bio_detail">
						<p><?php the_sub_field('item_name')?>: <?php the_sub_field('item_content'); ?></p>
					</div>
				<?php
					endwhile;
				endif;
				?>
                
                <h4>Achievement:</h4>
                <?php
				// check if the repeater field has rows of data
				if( have_rows('contest_title') ):
					// loop through the rows of data
					while ( have_rows('contest_title') ) : the_row(); ?>
					<div class="bio_detail">
						<p><?php the_sub_field('year')?> - <?php the_sub_field('name'); ?> <?php the_sub_field('division'); ?> <?php the_sub_field('place'); ?></p>
					</div>
				<?php
					endwhile;
				endif;
				?>
            </div>                      
        </div>
	</div>
</section>
<section class="related_topic">
	<div class="container">
    	<div class="related_header">
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
        </div>
    </div>
</section>