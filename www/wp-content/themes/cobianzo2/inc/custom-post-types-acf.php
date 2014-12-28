<?php


/* --------------------------------------------------------------------------------------
PARA WORKS 
--------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------- */

function cobianzo_custom_post_types() {

	/* TAXONOMY wor work category ------------------------------------------------------------*/
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
	/* TAXONOMY wor work category ------------------------------------------------------------*/


	/* WORKS  ------------------------------------------------------------*/
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
	
	
	/* CAROUSEL  ------------------------------------------------------------*/
/*	$labels = array(	'name'                => _x( 'Slider', 'Slider', 'cobianzo' ),'singular_name'       => _x( 'Slider', 'Slider', 'cobianzo' ),
						'menu_name'           => __( 'Slider', 'cobianzo' ),'parent_item_colon'   => __( 'Parent Item:', 'cobianzo' ),
						'all_items'           => __( 'All Items', 'cobianzo' ),'view_item'           => __( 'View Item', 'cobianzo' ),
						'add_new_item'        => __( 'Add New Item', 'cobianzo' ),'add_new'             => __( 'Add New', 'cobianzo' ),
						'edit_item'           => __( 'Edit Item', 'cobianzo' ),'update_item'         => __( 'Update Item', 'cobianzo' ),
						'search_items'        => __( 'Search Item', 'cobianzo' ),'not_found'           => __( 'Not found', 'cobianzo' ),
						'not_found_in_trash'  => __( 'Not found in Trash', 'cobianzo' ),	);
	$args = array(
		'label'               => __( 'slider', 'cobianzo' ),
		'description'         => __( 'Slider. Just create one Slider item and attach images to it', 'cobianzo' ),
		'labels'              => $labels,
		'supports'            => array( 'title'),
		'taxonomies'          => array( ),
		'hierarchical'        => true,
		'public'              => false,		'show_ui'             => true,
		'show_in_menu'        => true,		'show_in_nav_menus'   => false,
		'show_in_admin_bar'   => false,		'menu_position'       => 5,
		'can_export'          => true,		'has_archive'         => true,
		'exclude_from_search' => false,		'publicly_queryable'  => true,
		'capability_type'     => 'post',
	);
	register_post_type( 'slider', $args );	 */
	
}

// Hook into the 'init' action
add_action( 'init', 'cobianzo_custom_post_types', 0 );









/* --------------------------------------------------------------------------------------
PARA PAGES 
--------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------- */

/* ACF */
if(function_exists("register_field_group"))
{
	register_field_group(array (
		'id' => 'acf_featured-image-for-pages',
		'title' => 'Featured Image for pages',
		'fields' => array (
			array (
				'key' => 'field_5400b49d428b4',
				'label' => 'Title on top',
				'name' => 'title_on_top',
				'type' => 'text',
				'instructions' => 'Title with the heading h2 on top of the page',
				'default_value' => '',
				'placeholder' => '',
				'prepend' => '',
				'append' => '',
				'formatting' => 'html',
				'maxlength' => '',
			),
			array (
				'key' => 'field_5400b4c0428b5',
				'label' => 'Subtitle on top',
				'name' => 'subtitle_on_top',
				'type' => 'text',
				'instructions' => 'Below the title, as h3 heading',
				'default_value' => '',
				'placeholder' => '',
				'prepend' => '',
				'append' => '',
				'formatting' => 'html',
				'maxlength' => '',
			),
			array (
				'key' => 'field_5400ac9e07e38',
				'label' => 'Featured Image',
				'name' => 'featured_image',
				'type' => 'image',
				'instructions' => 'If you want to display an image on the top of the page, select it here.',
				'save_format' => 'id',
				'preview_size' => 'large',
				'library' => 'all',
			),
		),
		'location' => array (
			array (
				array (
					'param' => 'post_type',
					'operator' => '==',
					'value' => 'page',
					'order_no' => 0,
					'group_no' => 0,
				),
			),
		),
		'options' => array (
			'position' => 'normal',
			'layout' => 'default',
			'hide_on_screen' => array (
				0 => 'excerpt',
				1 => 'custom_fields',
				2 => 'discussion',
				3 => 'comments',
				4 => 'featured_image',
				5 => 'categories',
				6 => 'tags',
				7 => 'send-trackbacks',
			),
		),
		'menu_order' => 0,
	));
	
	
		register_field_group(array (
		'id' => 'acf_work-fields',
		'title' => 'Work fields',
		'fields' => array (
			array (
				'key' => 'field_5401b78ba6dc8',
				'label' => 'Subtitle',
				'name' => 'subtitle',
				'type' => 'text',
				'instructions' => 'If you want a tagline under the title',
				'default_value' => '',
				'placeholder' => '',
				'prepend' => '',
				'append' => '',
				'formatting' => 'html',
				'maxlength' => '',
			),
			array (
				'key' => 'field_54020e077c978',
				'label' => 'Client',
				'name' => 'client',
				'type' => 'text',
				'default_value' => '',
				'placeholder' => '',
				'prepend' => '',
				'append' => '',
				'formatting' => 'html',
				'maxlength' => '',
			),
			array (
				'key' => 'field_5401e5597171c',
				'label' => 'Website',
				'name' => 'website',
				'type' => 'text',
				'instructions' => 'Website. Start by http:// (or https://)',
				'default_value' => '',
				'placeholder' => 'http://',
				'prepend' => '',
				'append' => '',
				'formatting' => 'none',
				'maxlength' => '',
			),
			array (
				'key' => 'field_5401e8de4a0d6',
				'label' => 'Text Sidebar',
				'name' => 'text_sidebar',
				'type' => 'text',
				'instructions' => 'To add some more text in the left sidebar',
				'default_value' => '',
				'placeholder' => '',
				'prepend' => '',
				'append' => '',
				'formatting' => 'html',
				'maxlength' => '',
			),
			array (
				'key' => 'field_5401e9c0d7386',
				'label' => 'No Index',
				'name' => 'no_index',
				'type' => 'true_false',
				'instructions' => 'Avoid Search Enginges to follow references of this work',
				'message' => 'This will add the noindex nofollow to every link about this project.',
				'default_value' => 0,
			),
			array (
				'key' => 'field_5401e9c0d7ccc',
				'label' => 'Hide Date',
				'name' => 'hide_date',
				'type' => 'true_false',
				'instructions' => 'Don\'t show the date where the project was made',
				'message' => '(The date of the project is taken from the date of the post. top right corner)',
				'default_value' => 0,
			),

		),
		'location' => array (
			array (
				array (
					'param' => 'post_type',
					'operator' => '==',
					'value' => 'work',
					'order_no' => 0,
					'group_no' => 0,
				),
			),
		),
		'options' => array (
			'position' => 'normal',
			'layout' => 'default',
			'hide_on_screen' => array (
				0 => 'custom_fields',
				1 => 'discussion',
				2 => 'comments',
				3 => 'slug',
				4 => 'author',
				5 => 'send-trackbacks',
			),
		),
		'menu_order' => 0,
	));
}
