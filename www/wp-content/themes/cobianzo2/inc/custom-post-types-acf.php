<?php

function cobianzo_custom_post_types() {

	$labels = array(
		'name'                       => _x( 'Work Categories', 'Work Categories', 'cobianzo' ),		'singular_name'              => _x( 'Work cat', 'Work cat', 'cobianzo' ),
		'menu_name'                  => __( 'Work category', 'cobianzo' ),		'all_items'                  => __( 'All Items', 'cobianzo' ),
		'parent_item'                => __( 'Parent Item', 'cobianzo' ),		'parent_item_colon'          => __( 'Parent Item:', 'cobianzo' ),
		'new_item_name'              => __( 'New Item Name', 'cobianzo' ),		'add_new_item'               => __( 'Add New Item', 'cobianzo' ),
		'edit_item'                  => __( 'Edit Item', 'cobianzo' ),		'update_item'                => __( 'Update Item', 'cobianzo' ),
		'separate_items_with_commas' => __( 'Separate items with commas', 'cobianzo' ),		'search_items'               => __( 'Search Items', 'cobianzo' ),
		'add_or_remove_items'        => __( 'Add or remove items', 'cobianzo' ),		'choose_from_most_used'      => __( 'Choose from the most used items', 'cobianzo' ),
		'not_found'                  => __( 'Not Found', 'cobianzo' ),
	);
	$args = array(
		'labels'                     => $labels,
		'hierarchical'               => true,
		'public'                     => true,		'show_ui'                    => true,
		'show_admin_column'          => true,		'show_in_nav_menus'          => true,
		'show_tagcloud'              => true,
	);
	register_taxonomy( 'work_category', array( 'work' ), $args );

	$labels = array(	'name'                => _x( 'Works', 'Works', 'cobianzo' ),'singular_name'       => _x( 'Work', 'Work', 'cobianzo' ),
						'menu_name'           => __( 'Portfolio', 'cobianzo' ),'parent_item_colon'   => __( 'Parent Item:', 'cobianzo' ),
						'all_items'           => __( 'All Items', 'cobianzo' ),'view_item'           => __( 'View Item', 'cobianzo' ),
						'add_new_item'        => __( 'Add New Item', 'cobianzo' ),'add_new'             => __( 'Add New', 'cobianzo' ),
						'edit_item'           => __( 'Edit Item', 'cobianzo' ),'update_item'         => __( 'Update Item', 'cobianzo' ),
						'search_items'        => __( 'Search Item', 'cobianzo' ),'not_found'           => __( 'Not found', 'cobianzo' ),
						'not_found_in_trash'  => __( 'Not found in Trash', 'cobianzo' ),	);
	$args = array(
		'label'               => __( 'work', 'cobianzo' ),
		'description'         => __( 'a work for the portfolio', 'cobianzo' ),
		'labels'              => $labels,
		'supports'            => array( 'title', 'editor', 'thumbnail', 'excerpt', 'page-attributes'),
		'taxonomies'          => array( 'work_category', 'post_tag' ),
		'hierarchical'        => true,
		'public'              => true,		'show_ui'             => true,
		'show_in_menu'        => true,		'show_in_nav_menus'   => true,
		'show_in_admin_bar'   => true,		'menu_position'       => 5,
		'can_export'          => true,		'has_archive'         => true,
		'exclude_from_search' => false,		'publicly_queryable'  => true,
		'capability_type'     => 'post',
	);
	register_post_type( 'work', $args );
	add_theme_support( 'post-thumbnails', array( 'work' ) );
}

// Hook into the 'init' action
add_action( 'init', 'cobianzo_custom_post_types', 0 );