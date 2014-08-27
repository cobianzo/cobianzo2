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
	if (has_post_thumbnail()) { ?>
	<div class='col-xs-12'>
		<?php 	the_post_thumbnail('large'); ?>
	</div>
	<?php
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