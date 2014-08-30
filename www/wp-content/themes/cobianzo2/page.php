<?php
/**
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package cobianzo
 */
get_header(); ?>


<?php while ( have_posts() ) : the_post(); ?>

	<?php 
		$title	= get_post_meta(get_the_ID(), 'title_on_top', true);
		$subtitle	= get_post_meta(get_the_ID(), 'subtitle_on_top', true);	
		if (strlen($title) || strlen($subtitle)) {
			if ($title) echo "<h2>$title</h2>";
			if ($subtitle) echo "<h3>$subtitle</h3>";			
		echo "<hr>";
		}	
	?>

	<?php if ($featured_image_id = get_post_meta(get_the_ID(), "featured_image", true)) : 
		  $featured_image = wp_get_attachment_image_src( $featured_image_id, 'large' ); 	?>
	<div class='col-xs-12 text-center'>
		 <img src='<?php echo is_array($featured_image)? $featured_image[0] : ''; ?>' class='img-responsive' >
	</div>
	<?php endif; ?>


	<?php
		if (is_home() || is_front_page() ) {
					get_template_part( 'content', 'frontpage' );				
				}
	?>			
	
	<div class='col-xs-12'>
	<?php
		the_content();
	?>	
	</div>


<?php endwhile; // end of the loop. ?>


<?php
get_footer();
?>