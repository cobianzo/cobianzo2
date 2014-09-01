<?php
/**
 * @package cobianzo
 */
?>

<?php if (has_post_thumbnail()) : ?>
<div class='col-xs-12 center-img-height featured-img-work'>
	<span><a href='<?php echo get_bloginfo('home'); ?>/#portfolio'><i class='glyphicon glyphicon-circle-arrow-left'></i>
		<?php _e("Back to works"); ?></a>
	</span>
<?php
	if ($featured_image = wp_get_attachment_image_src( get_post_thumbnail_id(), 'large' )) : 

		  if (is_array($featured_image)) { 
		  echo "<img class='img-responsive' src='".$featured_image[0]."'>";
		  }
	endif;
?>
</div>
<?php endif; ?>

<header class='row-fluid clearfix'>

	<span class='col-xs-12 col-sm-9'>
		<h2>
			<?php the_title(); ?>
		</h2>
		<?php if ($subtitle = get_post_meta(get_the_ID(), 'subtitle', true)) { ?> <h3 class='small padding-top'>
			<?php echo $subtitle; ?>
		</h3> <?php } ?>
	</span>
	<span class='col-xs-12 col-sm-3 category-work'>
		<?php
		$work_cats	= 	wp_get_post_terms( get_the_ID(), 'work_category', array());
		foreach ($work_cats as $cc) $w_c[]	=  $cc->name; 
		echo "<h5 class='col-sm-12'>".implode(', ', $w_c)."</h5>";
		?>	
		<?php 
		if ($website = get_post_meta (get_the_ID(), 'website', true)) 
			echo "<a class='btn btn-default clearfix' href='$website' ".target_on_link($website).
					(($no_index = get_post_meta(get_the_ID(), 'no_index', true))? "rel='noindex nofollow'" : "" ).">"
				.__("Go to the website")."</a>";
		?>		
	</span>
	<hr class='clearfix col-xs-12'>
</header>


<div class="row-fluid clearfix">

	<aside class='col-xs-4 col-sm-3'>
		<?php		
		if ($client = get_post_meta (get_the_ID(), 'client', true)) 
			echo "<p class='clearfix padding-top'><b>".__("Client")."</b>: $client</p>";		
		?>
		
	
		<?php
		$work_tags	= wp_get_post_tags(get_the_ID());		
		foreach ($work_tags as $work_tag) $w_t[] = $work_tag->name;
		if (count($w_t)) echo " <p class='padding-top clearfix'><b>".__("Tags")."</b>: ".implode(', ', $w_t)."</p>";
		?>
		<?php		
		if ($text_sidebar = get_post_meta (get_the_ID(), 'text_sidebar', true)) 
			echo "<span class='clearfix'>$text_sidebar</span>";		
		?>
		
		
	</aside>
	
	<div class='col-xs-8 col-sm-9 padding-bottom'>
		<?php the_content(); ?>
	</div>
	
</div>

<section class='other-images clearfix row-fluid'>
<?php

	$attachments = wpba_get_attachments();
	if ( is_array($attachments) )foreach ($attachments as $att) :
		$image 			= wp_get_attachment_image_src( $att->ID, 'large' );		
		?>
		<div class='col-xs-12 center-img-height height-427'>
			<img class='img-responsive' src='<?php echo $image[0]; ?>' >
		</div>
		
		<?php
	endforeach;

?>
</section>


