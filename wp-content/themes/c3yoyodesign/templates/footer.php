<footer class="content-info" role="contentinfo">
  <!--<div class="container">
    <?php //dynamic_sidebar('sidebar-footer'); ?>
  </div>-->
    <div class="footer_item_wrapper">
        <div class="container">
            <div class="row">
                <!--<div class="col-sm-4 footer_item">
                    <div class="section_title">latest tweets</div>
                    <div class="media_wrapper">
                    
                    </div>
                </div>
                <div class="col-sm-4 footer_item">
                    <div class="section_title">instagram</div>
                    <div class="media_wrapper">
                    
                    </div>
                </div>
                <div class="col-sm-4 footer_item">
                    <div class="section_title">facebook</div>
                    <div class="media_wrapper">
                    </div>
                </div>-->
                <div class="clearfix newsletter_social_container" style="">
                    <div class="newsletter_container col-sm-6" style="">
                        <div class="headerText">
                            <!--<h2>Newsletter</h2>-->
                            <h4>Subscribe to our newsletter for more news, sales, videos and contest highlights!</h4>
                            <?php 							
                                echo do_shortcode('[newsletter_form][newsletter_field name="email" placeholder="Enter Your Email"][/newsletter_form]');
                            ?>
                        </div>
                    </div>
                    <div class="col-sm-6 social_container">
                    	<div class="headerText">
                            <h4>Connect us</h4>
                            <div>
	                            <a href="#" target="_blank" class="btn_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
    	                        <a href="#" target="_blank" class="btn_instagram"><i class="fa fa-instagram" aria-hidden="true"></i></a>
        	                    <a href="#" target="_blank" class="btn_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            	                <a href="#" class="btn_snapchat"><i class="fa fa-snapchat-ghost" aria-hidden="true"></i></a>
                	            <a href="#" target="_blank" class="btn_youtube"><i class="fa fa-youtube" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="clearfix">
                	<div class="col-sm-6 col-sm-push-6 footer_item">
                    	<h4>EXTRA</h4>
                    </div>
                    <div class="col-sm-pull-6 col-sm-3 footer_item">
                    	<h4>Useful Information</h4>
                        <?php $footer_menu_list = wp_get_nav_menu_items('useful-pages');
							if(count($footer_menu_list) > 0){
								echo "<ul>";	
							}
							foreach($footer_menu_list as $key => $link){ ?>
								 <li><a href="<?=$link->url?>"><?=$link->title?></a></li>
							<?php	
							}
							
							if(count($footer_menu_list) > 0){
								echo "</ul>";	
							}
						?>
                    </div>
                    <div class="col-sm-pull-6 col-sm-3 footer_item">
                    	<h4>MY ACCOUNT</h4>
                        <?php $footer_menu_list = wp_get_nav_menu_items('footer-account');
							if(count($footer_menu_list) > 0){
								echo "<ul>";	
							}
							foreach($footer_menu_list as $key => $link){ ?>
								 <li><a href="<?=$link->url?>"><?=$link->title?></a></li>
							<?php	
							}
							
							if(count($footer_menu_list) > 0){
								echo "</ul>";	
							}
						?>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
    
   <div class="copyright_wrapper">
		<div class="container">
        	<div class="row">
        	    <div class="col-xs-12 copyright">
        	        &copy; 2016 C3yoyodesign. All right reserved.
        	    </div>
        	</div>
    	</div>
	</div>
</footer>

<?php wp_footer(); ?> 