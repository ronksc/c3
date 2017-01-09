/* ========================================================================
 * DOM-based Routing
 * Based on http://goo.gl/EUTi53 by Paul Irish
 *
 * Only fires on body classes that match. If a body class contains a dash,
 * replace the dash with an underscore when adding it to the object below.
 *
 * .noConflict()
 * The routing is enclosed within an anonymous function so that you can 
 * always reference jQuery with $, even when in .noConflict() mode.
 *
 * Google CDN, Latest jQuery
 * To use the default WordPress version of jQuery, go to lib/config.php and
 * remove or comment out: add_theme_support('jquery-cdn');
 * ======================================================================== */

(function($) {

// Use this variable to set up the common and page specific functions. If you 
// rename this variable, you will also need to rename the namespace below.
var Roots = {
  // All pages
  common: {
    init: function() {
      // JavaScript to be fired on all pages
    }
  },
  // Home page
  home: {
    init: function() {
      // JavaScript to be fired on the home page
	  
		$('.banner_content').slick({	  
			/*centerMode: true,
			variableWidth: true,*/
			slidesToShow: 1,
			slidesToScroll:1,
			autoplay: true,
			autoplaySpeed: 10000,
			speed: 1000,
			fade: true,
			dots: true,
			arrows: true
		});
		
		$('.team_content').slick({	
			centerMode: true,
			slidesToShow: 5,
			slidesToScroll:1,
			autoplay: true,
			autoplaySpeed: 4000,
			infinite: true,
			speed: 400,
			dots: false,
			arrows: true,
			draggable: false,
			responsive: [
				{
				  breakpoint: 1440,
				  settings: {
					slidesToShow: 3,
					slidesToScroll: 3,
					draggable: false
				  }
				},
				{
				  breakpoint: 992,
				  settings: {
					slidesToShow: 3,
					slidesToScroll: 3,
					draggable: true
				  }
				},
				{
				  breakpoint: 600,
				  settings: {
					slidesToShow: 1,
					slidesToScroll: 1,
					draggable: true					
				  }
				}
			]
		});
				
		$(document).ready(function(e) {
			if($('#feature_video').length > 0){
				document.getElementById('feature_video').play(); 
			}
			
			var container = $('#news_container');
	 
			container.isotope({
				itemSelector: '.news_item',
				//layoutMode: 'moduloColumns',
				masonry: {
					columnWidth: container.find('.news_item').not('.item-width2').get(0),
					gutter: 10
				}
			});
			 
			container.imagesLoaded().progress( function() {
				container.isotope('layout');
			});
						 
			if($(window).width() >= 992){
				var win_height = $( window ).height();
				$('.banner_container').css('height', win_height-$('.main-menu').outerHeight());
			}else{
				$('.banner_container').css('height', '450');	
			}
			
			$(window).scroll(function(){
				if($(window).scrollTop() > 150){
					$('.slick-dots').fadeOut();
				}else{
					$('.slick-dots').fadeIn();
				}
			});
			  
			var parallax_controller = new ScrollMagic.Controller({globalSceneOptions: {triggerHook: "onEnter", duration: "200%"}});
				
				// Home Slider
			new ScrollMagic.Scene({triggerElement: ".banner_content"})
				.setTween(".banner_content .banner_item", {y: "100%", ease: Linear.easeNone})
				.addTo(parallax_controller);
			
			
			$(window).resize(function() {
				if($(window).width() >= 992){
					var height = $( window ).height();
					$('.banner_container').css('height', height-$('.main-menu').outerHeight());
				}else{
					$('.banner_container').css('height', '450');	
				}
			});
		});
    }
  },
  // About us page, note the change from about-us to about_us.
  about_us: {
    init: function() {
      // JavaScript to be fired on the about us page
    }
  },
  single_team_member: {
	init: function() {
		$('.team_slider').slick({
			//adaptiveHeight: true,
			slidesToShow: 1,
			slidesToScroll:1,
			autoplay: true,
			autoplaySpeed: 10000,
			speed: 1000,
			//fade: true,
			dots: true,
			arrows: true
		});	
		
		$('.related_topic_slider').slick({
			slidesToShow: 4,
			slidesToScroll:4,
			speed: 1000,
			arrows: true,
			responsive:[
				{
					breakpoint: 1440,
					settings: {
						slidesToShow: 4,
						slidesToScroll: 4,
					}
				},
				{
					breakpoint: 1200,
					settings: {
						slidesToShow: 3,
						slidesToScroll: 3,
					}
				},
				{
					breakpoint: 992,
					settings: {
						slidesToShow: 2,
						slidesToScroll: 2,
					}
				},
				{
					breakpoint: 650,
					settings: {
						slidesToShow: 1,
						slidesToScroll: 1,
					}
				}
			]
		});
		
		function init_scroll_down(){
			var target_buffer = parseInt($('.main').css('margin-top'));
			console.log('target_buffer = '+target_buffer);
			
			$('.scroll_down a').unbind('click');
			$('.scroll_down a').click(function(){
				//console.log('click');	
				$('html, body').animate({
					//scrollTop: $('#first_banner').offset().top - target_buffer
					scrollTop : $('#content_start').offset().top - target_buffer
				}, 800);
			});
		}
		
		$(document).ready(function(e) {
			init_scroll_down();
			
            if($(window).width() >= 992){
				var win_height = $( window ).height();
				$('.team_slider_container').css('height', win_height-$('.main-menu').outerHeight());
			}else{
				$('.team_slider_container').css('height', '450');	
			}
			
			var parallax_controller = new ScrollMagic.Controller({globalSceneOptions: {triggerHook: "onEnter", duration: "200%"}});
				
				// Home Slider
			new ScrollMagic.Scene({triggerElement: ".team_slider"})
				.setTween(".team_slider .slider_item", {y: "100%", ease: Linear.easeNone})
				.addTo(parallax_controller);
			
			$(window).resize(function() {
				init_scroll_down();
				
				if($(window).width() >= 992){
					var height = $( window ).height();
					$('.team_slider_container').css('height', height-$('.main-menu').outerHeight());
				}else{
					$('.team_slider_container').css('height', '400');
				}
			});
        });
	}
  }
};

// The routing fires all common scripts, followed by the page specific scripts.
// Add additional events for more control over timing e.g. a finalize event
var UTIL = {
  fire: function(func, funcname, args) {
    var namespace = Roots;
    funcname = (funcname === undefined) ? 'init' : funcname;
    if (func !== '' && namespace[func] && typeof namespace[func][funcname] === 'function') {
      namespace[func][funcname](args);
    }
  },
  loadEvents: function() {
    UTIL.fire('common');

    $.each(document.body.className.replace(/-/g, '_').split(/\s+/),function(i,classnm) {
      UTIL.fire(classnm);
    });
  }
};

$(document).ready(UTIL.loadEvents);

})(jQuery); // Fully reference jQuery after this point.
