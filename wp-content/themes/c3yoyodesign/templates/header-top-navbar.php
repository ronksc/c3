<header class="banner navbar navbar-default navbar-fixed-top" role="banner">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="javascript:;" class="menu-label hidden-xs hidden-sm hidden-md hidden-lg" data-toggle="collapse" data-target=".navbar-collapse">menu</a>
      <a class="navbar-brand" href="<?php echo home_url(); ?>/"><img class="img-responsive" src="<?=get_stylesheet_directory_uri()?>/assets/img/logo.png"></a>
      <a class="mobile_cart" href="#">
      	<i class="fa fa-shopping-cart" aria-hidden="true"></i>
      	<span>0</span>
      </a>
    </div>
    <div class="function-header">
    	<div class="clearfix">
            <div class="function-nav">
                <?php
                    //Function menu
                    if (has_nav_menu('function_menu')) :
                      wp_nav_menu(array('theme_location' => 'function_menu', 'menu_class' => 'nav navbar-nav', 'depth' => 0));
                    endif;
                ?>
            </div>
            <div class="social-container">
                <a href="#" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                <a href="#" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                <a href="#" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-snapchat-ghost" aria-hidden="true"></i></a>
                <a href="#" target="_blank"><i class="fa fa-youtube" aria-hidden="true"></i></a>
            </div>
            <div class="mini-cart">
                <a href="#" style=""><i class="fa fa-shopping-cart" aria-hidden="true"></i>(0)</a>
            </div>
    	</div>
    </div>
  </div>
  <div class="nav-container">
    <nav class="collapse navbar-collapse main-menu" role="navigation">
        <?php
            //Main menu
            if (has_nav_menu('primary_navigation')) :
              wp_nav_menu(array('theme_location' => 'primary_navigation', 'menu_class' => 'nav navbar-nav', 'depth' => 0));
            endif;
        ?>
        
    </nav>
  </div>
</header>
