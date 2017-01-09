jQuery(document).ready(function($){

//Quick view button on image hover
if(xoo_qv_localize.img_hover_btn == 'image_hover'){
	$('.xoo-qv-button').addClass('xoo-qv-btn-hover');
	$('.product').mouseover(function(){
		$(this).find('.xoo-qv-button').addClass('xoo-qv-btn-hover-active');

	}).mouseout(function(){
		$('.xoo-qv-button').removeClass('xoo-qv-btn-hover-active');
	})
}

// Lightbox
 function prettyPhotoLoad() {
    $("a.zoom").prettyPhoto({
        hook: 'data-rel',
        social_tools: false,
        theme: 'pp_woocommerce',
        horizontal_padding: 20,
        opacity: 0.8,
        deeplinking: false
    });
    $("a[data-rel^='prettyPhoto']").prettyPhoto({
    	show_title: xoo_qv_localize.prettyPhoto_title,
        hook: 'data-rel',
        social_tools: false,
        theme: 'pp_woocommerce',
        horizontal_padding: 20,
        opacity: 0.8,
        deeplinking: false,
    });

}

/** Quick View Modal Animation **/
	//Animate Type (anim_class = Bounce-in,linear CSS)
function xoo_qv_animate_1(direction,anim_class){

		var height = $(document).height()+'px';
		var width = $(document).width()+'px';

		if(direction == 'top'){
			$(".xoo-qv-inner-modal").css('transform','translate(0,-'+height+')').addClass(anim_class);
		}
		else if(direction == 'next'){
			$(".xoo-qv-inner-modal").css('transform','translate(-'+width+',0)').addClass(anim_class);
		}
		else if(direction == 'prev'){
			$(".xoo-qv-inner-modal").css('transform','translate('+width+',0)').addClass(anim_class);
		}	
}
	//Animate Type (anim_class = Fade-In)
function xoo_qv_animate_2(direction,anim_class){
		$(".xoo-qv-inner-modal").css('opacity','0').addClass(anim_class);
}
	//Animate type(none)
function xoo_qv_animate_3(){}

	//Check User settings
function xoo_qv_animation_func(qv_id,direction){
	
	if(xoo_qv_localize.modal_anim == 'linear'){
		xoo_qv_ajax(qv_id,xoo_qv_animate_1,direction,'xoo-qv-animation-linear');
	}
	else if(xoo_qv_localize.modal_anim == 'fade-in'){
		xoo_qv_ajax(qv_id,xoo_qv_animate_2,null,'xoo-qv-animation-fadein');
	}
	else {
		xoo_qv_ajax(qv_id,xoo_qv_animate_3);
	}
}

//Close window
$('.xoo-qv-panel').on('click','.xoo-qv-close',function(){
	$('.xoo-qv-opac').hide();
	$('.xoo-qv-panel').removeClass('xoo-qv-panel-active');
	$('.xoo-qv-modal').html('');

})

$(document).keyup(function(e) {
  if (e.keyCode === 27){
  	$('.xoo-qv-close').trigger('click');
  } 
 })
/*****    Ajax call on button click      *****/	
function xoo_qv_ajax(xoo_qv_id,anim_type,direction,anim_class){
		$.ajax({
		url: xoo_qv_localize.adminurl,
		type: 'POST',
		data: {action: 'xoo_qv_ajax',
			   product_id: xoo_qv_id
			},
		success: function(response){
			$('.xoo-qv-modal').html(response);
			anim_type(direction,anim_class);
			$('.xoo-qv-pl-active').removeClass('xoo-qv-pl-active');
			 prettyPhotoLoad();
		 	$('.xoo-qv-panel').find('.variations_form').wc_variation_form();
		 	$('.xoo-qv-panel .variations_form select').change();
			 
		},
	})
}

// Main Quickview Button
$(document).on('click','.xoo-qv-button',function(){
	$('.xoo-qv-opac').show();
	var xoo_qv_panel = $('.xoo-qv-panel');
	$('.xoo-qv-panel').addClass('xoo-qv-panel-active');
	xoo_qv_panel.find('.xoo-qv-opl').addClass('xoo-qv-pl-active');
	var qv_id = $(this).attr('qv-id');
	xoo_qv_animation_func(qv_id,'top');

})

// Next Product
$('.xoo-qv-panel').on('click','.xoo-qv-nxt',function(){
	$('.xoo-qv-mpl').addClass('xoo-qv-pl-active');
	var qv_id = $(this).attr('qv-nxt-id');
	var product_nxt = $("[qv-id="+qv_id+"]").parents().next().find('.xoo-qv-button').attr('qv-id');
	var product_nxt_id;

	if(product_nxt === undefined){
		product_nxt_id = $('.xoo-qv-button:first').attr('qv-id');	
	}
	else{
		product_nxt_id = product_nxt;
	}
	xoo_qv_animation_func(product_nxt_id,'next');
})

//Previous Product
$('.xoo-qv-panel').on('click','.xoo-qv-prev',function(){
	$('.xoo-qv-mpl').addClass('xoo-qv-pl-active');
	var qv_id = $(this).attr('qv-prev-id');
	var product_prev = $('[qv-id='+qv_id+']').parents().prev().find('.xoo-qv-button').attr('qv-id');
	var product_prev_id;

	if(product_prev === undefined){
		product_prev_id = $('.xoo-qv-button:last').attr('qv-id');	
	}
	else{
		product_prev_id = product_prev;
	}
	xoo_qv_animation_func(product_prev_id,'prev');
})
})
