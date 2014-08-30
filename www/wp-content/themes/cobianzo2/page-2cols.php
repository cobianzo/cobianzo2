<?php
/**
 * Template Name: 2 columns
 * To display every column use the teaser separator
 * @package cobianzo
 */

get_header(); ?>


<?php while ( have_posts() ) : the_post(); ?>

<?php
	// we take as a column every separation of content with the teaser <!--more-->
	global $post;
	$content			= $post->post_content;
	
	$columns_content	= explode('<!--more-->', $content);
	foreach ($columns_content as $i => $column_content) {
		$column_content 		= 	apply_filters('the_content', 	$column_content);
		$column_content 		= 	str_replace(']]>', ']]>', 	$column_content);
		$columns_content[$i]	=	$column_content;
	}
?>
	<?php if ($featured_image_id = get_post_meta(get_the_ID(), "featured_image", true)) : ?>
	<div class='col-xs-12'>
		 <img src='<?php echo wp_get_attachment_image_src( $featured_image_id, 'large' ); ?> class='img-responsive' >
	</div>
	<?php endif; ?>
	
	<div class='col-sm-6'>
	<?php
		echo $columns_content[0];
	?>	
	</div>
	<div class='col-sm-6'>
	<?php if (count($columns_content) >= 1) { 
		echo $columns_content[1];
	} ?>	
	</div>
	
	<?php if (count($columns_content) >= 2) { 	 ?>	
	<div class='col-xs-12'>
	<?php
		echo $columns_content[2];
	?>
	</div>
	<?php } ?>	


<?php endwhile; // end of the loop. ?>

<?php get_footer(); ?>
