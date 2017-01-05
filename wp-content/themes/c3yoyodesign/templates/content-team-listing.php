<?php
	$team_cat_args = array(
		'type'                     => 'team-member',
		'orderby'                  => 'slug',
		'order'                    => 'asc',
		'hide_empty'               => 0,
		'hierarchical'             => 0,
		'taxonomy'                 => 'country'
	);
	$team_categories = get_categories( $team_cat_args );
	
	//print_r($team_categories);
	
	
?>
<div class="container team_container">
	<?php
    foreach ($team_categories as $team_category){
		$args= array(
			'post_type' => 'team-member',
			'tax_query' => array(
							  array(
								'taxonomy' => 'country',
								'field'    => 'slug',
								'terms'    => $team_category->slug,
								'include_children' => false
							  )
							),
			'post_status' 		=> 'publish',
			'orderby'			=> 'menu_order',
			'order' 			=> 'ASC',
			'numberposts' 		=> -1
		);
		$results = get_posts( $args ); 
	    $size = sizeof($results); 
		?>
        <div class="region_container">
			<h3><span><?=$team_category->cat_name?></span></h3>
			<?php 
            $counter = 0;
            foreach( $results as $result ){ 
                
                $url = wp_get_attachment_url( get_post_thumbnail_id( $result->ID, 'full' ) );
				$display_name = get_field('display_name', $result->ID);
                
                if($counter == 0 || $counter%4 == 0){
                    echo '<div class="clearfix team_row">';	
                }?>
                    <div class="col-sm-3 team_item">
                        <div class="team_image" style="background-image:url(<?=$url?>);">
                        	<a href="<?=get_permalink( $result->ID )?>"></a>
                        </div>
                        <div class="team_name">
                            <a href="<?=get_permalink( $result->ID )?>"><?=$result->post_title?></a>
                        </div>
                    </div>
                <?php 
				//if($counnter !== 1 && $counter%4 == 0 || $counter == $size){
				if($counter%4==3 || $counter==$size-1){
                    echo '</div>';
                }
				$counter++;
				?>
            <?php } ?>
    	</div>
	<?php }	?>
</div>