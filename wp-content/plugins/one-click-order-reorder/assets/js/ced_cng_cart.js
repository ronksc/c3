jQuery( document ).ready( function( $ ) {
	$( '.ced_my_account_reorder, .ced_my_account_place_same_order' ).each( function(){
		$( this ).attr( 'data-order_id', $( this ).attr( 'href' ).split( 'http://' )[1] );
		$( this ).attr( 'href', 'javascript:void(0);' ); 
	});
	
	$( '.ced_my_account_reorder' ).on('click',function() {
		$( this ).css( 'opacity', '0.5');
		var order_id = $( this ).data( 'order_id' );	
		ced_cng_ajax( order_id );
	});
	
	$( '.ced_cng_reorder' ).on( 'click', function() {
		$( this ).css('opacity', '0.5');
		var order_id = $( this ).data( 'id' );	
		ced_cng_ajax( order_id );
	});

	function ced_cng_ajax( order_id ) {
		jQuery.ajax({
			url 	: global_var.ajaxurl,
			data 	: {
			   action		: 'get_order_cart',
			   nonce_check	: global_var.ajax_nonce,
			   order_id		: order_id
			},
			type 	: 'post',
			success	: function( data ) {
			  	window.location = global_var.cart_url;
			}
		});	
	}
	
	$( document ).on( 'click', '.ced_my_account_place_same_order', function() {
		var $this = $( this ),
		order_id = $this.data( 'order_id' );
		$this.css( 'opacity', '0.5' );
		ced_cng_get_order_products( order_id );
	});

	$( document ).on( 'click', '.ced_cng_placeorder', function() {
		var $this = $( this ),
		order_id = $this.data( 'id' );
		$this.css( 'opacity', '0.5' );
		ced_cng_get_order_products( order_id );
	});
	
	function ced_cng_get_order_products( order_id ) {
		jQuery.ajax({
			url 	: global_var.ajaxurl,
			data 	: {
				action		: 'get_oreder_products',
				order_id	: order_id,
				ajax_nonce	: global_var.ajax_nonce
			},
			type 	: 'post',
			success	: function( response ) {
				try {
	            	response = jQuery.parseJSON( response );
	            	
	            	var products = response.prodcuts;
	            	var total = 0;
					var popup = '<div id="ced_cng_prodcts_exclude" class="ced_cng_popup-wrapper">';
							popup += '<div class="ced_cng_popup-overlay">';
								popup += '<div class="ced_cng_popup-container">';
									popup += '<div class="ced_cng_popup-heading">';
										popup += '<h1><strong>'+ global_var.exclude_products_head +'</strong></h1>';
										popup += '<a class="ced_cng_close ced_cng_close_wrapper">&times;</a>';
									popup += '</div>';
									popup += '<div class="ced_cng_popup-content">';
										popup += '<div class="ced_cng_tbl_header">';
											popup += '<div class="ced_cng_product_info">';
												popup += '<div class="ced_cng_popup-column">';
													popup += '<span class="ced_cng_heading_text">'+ global_var.exclude +'</span>';
												popup += '</div>';
												popup += '<div class="ced_cng_popup-column">';
													popup += '<span class="ced_cng_heading_text">'+ global_var.product_name +'</span>';
												popup += '</div>';
												popup += '<div class="ced_cng_popup-column">';
													popup += '<span class="ced_cng_heading_text">'+ global_var.stock +'</span>';
												popup += '</div>';
												popup += '<div class="ced_cng_popup-column">';
													popup += '<span class="ced_cng_heading_text">'+ global_var.quantity +'</span>';
												popup += '</div>';
											popup += '</div>';
										popup += '</div>';
										popup += '<div class="ced_cng_popup-content ced_cng_tbl_body">';

						            	for( var id in products ) {
						            		if ( ! products.hasOwnProperty( id ) ) {
						            			continue;
						            		}

						            		var title 	= products[ id ].title;
						            		availablity = products[ id ].availability,
						            		qty 		= products[ id ].qty,
						            		stock 		= products[ id ].stock == 'out_of_stock' ? 'Out of stock' : 'In stock',
						            		stockClass 	= products[ id ].stock == 'out_of_stock' ? 'ced_cng_txt_red' : 'ced_cng_txt_green',
						            		excluded 	= products[ id ].stock == 'out_of_stock' ? 'checked readonly' : '',
						            		exclude_dsc = products[ id ].stock == 'out_of_stock' ? global_var . out_of_stock_desc : global_var .exclude_desc,
						            		permalink 	= products[ id ].permalink;
											
						            		if ( availablity == 'not_exist' ) {
						            			continue;
						            		}
						            		
						            		if ( availablity == 'availale' ) {
												popup += '<div class="ced_cng_product_info ced_cng_product-'+ id +'">';
													popup += '<div class="ced_cng_popup-column">';
														popup += '<input class="ced_cng_exclude_item" type="checkbox" value="'+ id +'" '+ excluded +' title="'+ exclude_dsc +'">';
													popup += '</div>';
													popup += '<div class="ced_cng_popup-column"><a href="'+ permalink +'" target="_blank">'+ title +'</a></div>';
													popup += '<div class="ced_cng_popup-column"><span class="'+ stockClass +'">'+ stock +'</span></div>';
													popup += '<div class="ced_cng_popup-column">';
														popup += '<input step="1" min="1" max="" value="'+ qty +'" data-id="'+ id +'" onkeydown="return false" class="ced_cng_qty" size="4" pattern="[0-9]*" inputmode="numeric" type="number">';
													popup += '</div>';
												popup += '</div>';
						            		} else {
						            			excluded = 'checked disabled';
						            			popup += '<div class="ced_cng_product_info ced_cng_product-'+ id +'">';
													popup += '<div class="ced_cng_popup-column">';
														popup += '<input class="ced_cng_exclude_item" type="checkbox" value="'+ id +'" '+ excluded +' title="'+ exclude_dsc +'">';
													popup += '</div>';
													popup += '<div class="ced_cng_popup-column"><a href="'+ permalink +'" class="ced_cng_strikethrough" target="_blank">'+ title +'</a></div>';
													popup += '<div class="ced_cng_popup-column"><span class="'+ stockClass +'">'+ stock +'</span></div>';
													popup += '<div class="ced_cng_popup-column">';
														popup += '<input step="1" min="1" max="" value="'+ qty +'" data-id="'+ id +'" onkeydown="return false" class="ced_cng_qty" size="4" pattern="[0-9]*" inputmode="numeric" type="number">';
													popup += '</div>';
												popup += '</div>';
						            		}
						            		total++;
		        						}
		        						if ( total <= 0 ) {
		        							popup += '<div class="ced_cng_product_info ced_cng_product-'+ id +'">';
												popup += '<div class="ced_cng_popup-no-product">';
													popup += global_var.product_not_exist;
												popup += '</div>';
											popup += '</div>';
		        						}
										popup += '</div>';
									popup += '</div>';
									popup += '<div class="ced_cng_popup-buttons">';
										if ( total > 0 ) {
											popup += '<a id="ced_cng_popup-submit-btn" class="ced_cng_popup-btn" data-order_id="'+ order_id +'"><span>'+ global_var.submit +'</span></a>';
										}
									popup += '</div>';
								popup += '</div>';
							popup += '</div>';
						popup += '</div>';
					$( document.body ).prepend( popup );
				} catch( e ) {
					console.log( e );
				}
            }
		});
	}

	$( document ).on( 'click', '#ced_cng_popup-submit-btn', function() {
		var $this = $( this ),
		order_id = $this.data( 'order_id' ),
		excluded_products = [],
		quantities = {};
		if ( $this.is( '[disabled="disabled"]' ) ) {
			return false;
		}

		$( document ).find( '.ced_cng_exclude_item' ).each( function() {
			if ( $( this ).is( ':checked' ) ) {
				excluded_products.push( $( this ).val() );
			}
		});

		$( document ).find( '.ced_cng_qty' ).each( function() {
			quantities[ $( this ).data( 'id' ) ] = $( this ).val();
		});
		$this.css( 'opacity', '0.5');
		$this.attr( 'disabled', 'disabled' );
		ced_cng_same_order_ajax( order_id, excluded_products, quantities );
	})

	

	function ced_cng_same_order_ajax( order_id, excluded_products, quantities ) {
		jQuery.ajax({
			url 	: global_var.ajaxurl,
			data 	: {
				action				: 'get_same_order_cart',
				ajax_nonce 			: global_var.ajax_nonce,
				order_id		 	: order_id,
				excluded_products	: excluded_products,
				quantities			: quantities
			},
			type 	: 'post',
			success	: function( response ) {
				window.location = global_var.checkouturl;
            }
		});
	}

	$( document ).on( 'click', '.ced_cng_close_wrapper', function() {
		$( this ).parents( '#ced_cng_prodcts_exclude' ).remove();
	});
});
