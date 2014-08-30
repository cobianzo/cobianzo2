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
			<nav class='navbar navbar-default navbar-right col-xs-12 padding-top'>
			
				<div class="navbar-header pull-right">
					<button type="button" data-target="#navbarFilter" data-toggle="collapse" class="navbar-toggle">
						<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
					</button>
					<b class='pull-left padding-top font-title padding-left'> <?php _e('filter by format'); ?> </b>		
				</div>			
			
				<div id="navbarFilter" class="collapse navbar-collapse">
				<?php
					$current_filter = (isset($_GET['filterby']))? $_GET['filterby'] : '';
				?>
					<ul class='navbar-nav nav pull-right'>
					<li>
						<a href='?filterby=#portfolio' title='' <?php echo (!$current_filter)? 'class=active': '' ; ?>>
							<?php _e('Show all'); ?>
						</a>
					</li>
					<?php
						$cats = get_terms('work_category', array('orderby'=>'count', 'order' => 'DESC', 'hide_empty' => false));
					foreach ($cats as $work_cat) {
					?>
					<li> 
						<a 	href='?filterby=<?php echo $work_cat->slug; ?>#portfolio' title='<?php esc_attr(__('filter by ').$work_cat->name); ?>' data-filter='<?php echo $work_cat->slug; ?>'
							class='<?php echo ($current_filter == $work_cat->slug)? 'active': '' ; ?> filter-trigger-ajax'>
						<?php echo $work_cat->name;  ?> 
						</a>
					</li>
					<?php
					}
					?>				
					</ul>
				</div>
			</nav>
			<?php # this is the script that load ajax to reload the works depending on the clicked filter (see functions.php, function print_work_gallery) --> ?>
			<script>
				jQuery('.filter-trigger-ajax').click(function(e){
					e.preventDefault();
					addLoadingWheel("body", '');
					jthis	= jQuery(this);
					jQuery.post(MyJS.ajaxurl, {
			            		action: 		'print_work_gallery',
			            		work_category: 	jthis.attr('data-filter'),
			            }, function(response)     {	
				            removeLoadingWheel();
			            	jQuery('#works-preview-container').html(response);
			            	jQuery("#navbarFilter a").removeClass('active');
			            	jthis.addClass('active');
			        })
			        										
				});			
			</script>
		
		
		
		
		
<!-- END FILTER MENU ***************************************************************************-->
<section id='works-preview-container' class='clearfix'> <!-- for ajax fill in -->
<!-- LIST OF WORKS ***************************************************************************-->
		
		<?php
		// see functions.php
		print_work_gallery( $options  = array ( 'work_category' => $current_filter));
		?>
</section>

		
		
		</div> <!-- container of all works -->