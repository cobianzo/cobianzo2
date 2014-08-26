<?php
/**
 * The template used for displaying page content in page.php
 *
 * @package cobianzo
 */
?>


<?php 
		get_template_part( 'content', 'carousel' );				
?>

<!-- List of portfolios -->


<!-- FILTER MENU ***************************************************************************-->
<!-- FILTER MENU ***************************************************************************-->


		<div class='row-fluid'>
			
			<a name='portfolio' id='portfolio' href='#'></a>
			<nav class='navbar navbar-default navbar-right col-xs-12'>
			
				<div class="navbar-header">
					<button type="button" data-target="#navbarFilter" data-toggle="collapse" class="navbar-toggle">
						<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
					</button>
					<b> <?php _e('fiter by format'); ?> </b>		
				</div>			
			
				<div id="navbarFilter" class="collapse navbar-collapse">
				<?php
					$current_filter = (isset($_GET['filterby']))? $_GET['filterby'] : '';
				?>
					<ul class='navbar-nav nav'>
					<li>
						<a href='?filterby=' title='' <?php echo (!$current_filter)? 'class=active': '' ; ?>>
							<?php _e('Show all'); ?>
						</a>
					</li>
					<?php
						$cats = get_terms('work_category', array('orderby'=>'count', 'order' => 'DESC', 'hide_empty' => false));
					foreach ($cats as $work_cat) {
					?>
					<li> 
						<a 	href='?filterby=<?php echo $work_cat->slug; ?>' title='<?php esc_attr(__('filter by ').$work_cat->name); ?>'
							<?php echo ($current_filter == $work_cat->slug)? 'class=active': '' ; ?>>
						<?php echo $work_cat->name;  ?> 
						</a>
					</li>
					<?php
					}
					?>				
					</ul>
				</div>
			</nav>
		
		
<!-- END FILTER MENU ***************************************************************************-->

<!-- LIST OF WORKS ***************************************************************************-->
		
		<?php
		$params		=	array(
				'post_type' 	=>	'work',
				'posts_per_page'=>	12,
				'orderby'		=>	'menu_order date',
				'order'			=> 'DESC'
			);
		if ($current_filter)	$params['work_category']	= 	$current_filter;

		query_posts($params);
		
		if (!have_posts()) {
			get_template_part( 'content', 'none' ); 
		}else 
		while (have_posts()) : the_post();
		?>
			<ul id='works-preview'>
		<?php
				get_template_part( 'content', 'work-preview' );
		?>
			</ul>
		<?php	
		endwhile;
?>


		
		
		</div> <!-- container of all works -->