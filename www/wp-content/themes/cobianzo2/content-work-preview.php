<?php
/**
 * @package cobianzo
 */


$work_cats	= 	wp_get_post_terms( get_the_ID(), 'work_category', array());
foreach ($work_cats as $cc) $w_c[]	=  $cc->name;
//print_r($work_cats);
?>

		
		<li class='col-xs-6 col-sm-4 col-md-3 col-lg-3'>
			<a 	href='<?php the_permalink(); ?>' title='<?php echo esc_attr(get_the_excerpt()); ?>' 
				<?php if ($no_index = get_post_meta(get_the_ID(), 'no_index', true)) { ?> rel='noindex nofollow' <?php } ?>>
			<h5><?php the_title(); ?>
				<hr>
				<small class='font-default'><?php 
				echo implode (", ", $w_c);
				?></small>
			</h5>
			
			<?php 
			if ( has_post_thumbnail() ) { // check if the post has a Post Thumbnail assigned to it.
				the_post_thumbnail('thumbnail');
			} 
			
			?> 
		
			</a>
		</li>