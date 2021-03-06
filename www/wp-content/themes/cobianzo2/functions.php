<?php
/**
 * cobianzo functions and definitions
 *
 * @package cobianzo
 */

/**
 * Set the content width based on the theme's design and stylesheet.  NI SE USA
 */
if ( ! isset( $content_width ) ) {
	$content_width = 640; /* pixels */
}

if ( ! function_exists( 'cobianzo_setup' ) ) :
/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function cobianzo_setup() {

	/*
	 * Make theme available for translation.
	 * Translations can be filed in the /languages/ directory.
	 * If you're building a theme based on cobianzo, use a find and replace
	 * to change 'cobianzo' to the name of your theme in all the template files
	 */
	load_theme_textdomain( 'cobianzo', get_template_directory() . '/languages' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
	 * Enable support for Post Thumbnails on posts and pages.
	 *
	 * @link http://codex.wordpress.org/Function_Reference/add_theme_support#Post_Thumbnails
	 */
	//add_theme_support( 'post-thumbnails' );
	
	// This theme uses wp_nav_menu() in one location.
	register_nav_menus( array(
		'primary' => __( 'Primary Menu', 'cobianzo' ),
		'footer' => __( 'Footer Menu', 'cobianzo' ),
	) );

	/*
	 * Switch default core markup for search form, comment form, and comments
	 * to output valid HTML5.
	 */
	add_theme_support( 'html5', array(
		'search-form', 'comment-form', 'comment-list', 'gallery', 'caption',
	) );

	/*
	 * Enable support for Post Formats.
	 * See http://codex.wordpress.org/Post_Formats
	 */
/*	add_theme_support( 'post-formats', array(
		'aside', 'image', 'video', 'quote', 'link',
	) ); */

	// Setup the WordPress core custom background feature.
/*	add_theme_support( 'custom-background', apply_filters( 'cobianzo_custom_background_args', array(
		'default-color' => 'ffffff',
		'default-image' => '',
	) ) ); */
}
endif; // cobianzo_setup
add_action( 'after_setup_theme', 'cobianzo_setup' );

/**
 * Register widget area.
 *
 * @link http://codex.wordpress.org/Function_Reference/register_sidebar
 */
function cobianzo_widgets_init() {
	register_sidebar( array(
		'name'          => __( 'Sidebar', 'cobianzo' ),
		'id'            => 'sidebar-1',
		'description'   => '',
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget'  => '</aside>',
		'before_title'  => '<h1 class="widget-title">',
		'after_title'   => '</h1>',
	) );
}
add_action( 'widgets_init', 'cobianzo_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function cobianzo_scripts() {

	# Styles
	wp_enqueue_style( 'bootstrap', get_template_directory_uri() . '/bootstrap/bootstrap.css' );  	// style framework. Dont' touch, only edit cobianzo-theme/mixins.sass and cobianzo-theme/variables.sass
	wp_enqueue_style( 'cobianzo-style', get_stylesheet_uri() );												// style.css

	# Javscript jquery and bootstrap
	wp_enqueue_script( 'jquery', get_template_directory_uri() . '/js/jquery-2.1.1.min.js', array(), '20130115', true );	
	// wp_enqueue_script( 'bootstrap-js', get_template_directory_uri() . '/bootstrap/javascripts/bootstrap.js', array('jquery'), '20130115', true );  We dont use any function of js bootstrap (tabs, modals, tooltips...)
	
	# Other Javscript 
	/*wp_enqueue_script( 'cobianzo-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20130115', true ); // Dont' really know what ut's for
	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	} */
//	TO_DO: include customizr or modernizr.
//	wp_enqueue_script( 'customizer', get_template_directory_uri() . '/js/customizer.js', array(), '20130115', true );




	# carousel
	if ((is_home()) || (is_front_page()))
	{	
		wp_enqueue_style( 'owl-carousel-css', get_template_directory_uri() . '/js/owl-carousel/owl.carousel.css' );	
		wp_enqueue_script( 'owl-carousel', get_template_directory_uri() . '/js/owl-carousel/owl.carousel.min.js', array(), '20130115', true );
	}
	wp_enqueue_script( 'cobianzo-custom', get_template_directory_uri() . '/js/cobianzo.custom.js', array(), '20140115', true );

	wp_localize_script( 'cobianzo-custom', 'MyJS', array( 
			'ajaxurl' 			=> admin_url( 'admin-ajax.php' ), 			  /* MyJS.ajaxurl , to use Ajax properly in WP , i need it */
	) );
	
	
	
}
add_action( 'wp_enqueue_scripts', 'cobianzo_scripts' );





/* ALL THE REQUIREMENTS RELATED TO FUNCITONS *********************************************************** 
*********************************************************** *********************************************************** 
*********************************************************** *********************************************************** 
*********************************************************** *********************************************************** 
*********************************************************** *********************************************************** */

/**
 * Implement the Custom Header feature. Not used :) !
 */
//require get_template_directory() . '/inc/custom-header.php';



// to convert a menu into botstrap style. #https://github.com/twittem/wp-bootstrap-navwalker
require get_template_directory() . '/inc/wp_bootstrap_navwalker.php'; 
require get_template_directory() . '/inc/custom-post-types-acf.php';
/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';
/**
 * Custom functions that act independently of the theme templates.
 */
require get_template_directory() . '/inc/extras.php';
/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';
/**
 * Load Jetpack compatibility file.
 */
require get_template_directory() . '/inc/jetpack.php';







/*  
	AJAX: cargar la preview de trabajo por categoria
*/

add_action('wp_ajax_print_work_gallery', 'print_work_gallery'); /* for pagination with ajas. see netgig.custom.js*/
add_action('wp_ajax_nopriv_print_work_gallery', 'print_work_gallery');
function print_work_gallery( $params=array()){

	$options = array_merge( array( 'work_category' => '' ) , (is_array($params)? $params :  array()));
	if (isset($_POST['work_category']))  $options = array_merge($options, $_POST);

	$params		=	array(
		'post_type' 	=>	'work',
		'posts_per_page'=>	-1,
		'orderby'		=>	'menu_order date',
		'order'			=> 	'DESC'
	);
	
	$params['work_category']	= 	$options['work_category'];

	query_posts($params);
	if (!have_posts()) {
			get_template_part( 'content', 'none' ); 
	}else { ?>
	<ul id='works-preview'>
	<?php	
	while (have_posts()) : the_post();
	?>
	
	<?php
				get_template_part( 'content', 'work-preview' );
				
	endwhile;
	?>
	</ul>
	<?php	

	}
	wp_reset_query();
	if (defined('DOING_AJAX') && DOING_AJAX) { die(); }

}




// página single work, mantiene el menú Works seleccionado
add_filter('nav_menu_css_class' , 'add_custom_classes' , 10 , 2);
function add_custom_classes($classes, $item){
    if(is_single() && $item->title == __('Works')){
         $classes[] = 'current-menu-item active';
    }
    return $classes;
}




 
 
 /* small helpers used in any place of the theme */
 
  // this function returns target='_blank' or target="_self" depending on the url,(if it contains the current server name. or not)
 function target_on_link($link="")
 {
 	if (!$link) return;
 	$target =  " target='".(((strpos($link, $_SERVER["SERVER_NAME"]))||(!strpos(' '.$link,"http")))? '_self': '_blank' )."' ";
 	return $target;
 }

 
 // a work can have a side image associated. This will display it 
 function show_work_side_image($work_id = null){
 
	global $post;
	if (!$work_id) $work_id = $post->ID;
	
		
	if ( ! $image_id = get_post_meta($work_id, "image_on_sidebar", true) )  return false;
	
		
	$image_src = wp_get_attachment_image_src( $image_id, "thumbnail" );
	
	return "\n  <img src='".$image_src[0]."' alt='Image preview' class='img-responsive'>\n";
 
 }
 
 
 /* debuggers  */
 
 function print_filters_for( $hook = '' ) {
    global $wp_filter;
    if( empty( $hook ) || !isset( $wp_filter[$hook] ) )
        return;

    print '<pre>';
    print_r( $wp_filter[$hook] );
    print '</pre>';
}