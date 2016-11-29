<?php

// Team
add_action('init', 'team_register');
function team_register() {
  $labels = array(
      'name' => _x('Team', 'post type general name'),
      'singular_name' => _x('Team', 'post type singular name'),
      'add_new' => _x('Add Team', 'rep'),
      'add_new_item' => __('Add Team'),
      'edit_item' => __('Edit Team'),
      'new_item' => __('New Team'),
      'view_item' => __('View Team'),
      'search_items' => __('Search Team'),
      'not_found' =>  __('Nothing found'),
      'not_found_in_trash' => __('Nothing found in Trash'),
      'parent_item_colon' => ''
  );
  $args = array(
      'labels' => $labels,
      'public' => true,
      'publicly_queryable' => true,
      'show_ui' => true,
      'query_var' => true,
      'rewrite' => true,
      'capability_type' => 'post',
      'hierarchical' => true,
      'menu_position' => 20,
      'supports'      => array( 'title', 'editor', 'page-attributes'),
  );
  register_post_type( 'team-member' , $args );
}

// Media coverage
add_action('init', 'media_cover_register');
function media_cover_register() {
  $labels = array(
      'name' => _x('Media coverage', 'post type general name'),
      'singular_name' => _x('Media coverage', 'post type singular name'),
      'add_new' => _x('Add Media coverage', 'rep'),
      'add_new_item' => __('Add Media coverage'),
      'edit_item' => __('Edit Media coverage'),
      'new_item' => __('New Media coverage'),
      'view_item' => __('View Media coverage'),
      'search_items' => __('Search Media coverage'),
      'not_found' =>  __('Nothing found'),
      'not_found_in_trash' => __('Nothing found in Trash'),
      'parent_item_colon' => ''
  );
  $args = array(
      'labels' => $labels,
      'public' => true,
      'publicly_queryable' => true,
      'show_ui' => true,
      'query_var' => true,
      'rewrite' => true,
      'capability_type' => 'post',
      'hierarchical' => true,
      'menu_position' => 20,
      'supports'      => array( 'title', 'editor', 'page-attributes'),
  );
  register_post_type( 'media-coverage' , $args );
}
?>