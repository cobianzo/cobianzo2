<?php
/**
 * @package cobianzo
 */
?>

		
		<li class='col-sm-6 col-md-4 col-lg-3'>
			<a href='<?php the_permalink(); ?>' title='<?php echo esc_attr(get_the_excerpt()); ?>' rel='noindex nofollow'>
			<h5><?php the_title(); ?></h5>
			
			<?php 
			if ( has_post_thumbnail() ) { // check if the post has a Post Thumbnail assigned to it.
				the_post_thumbnail('thumbnail');
			} 
			
			?> 
		
			</a>
		</li>