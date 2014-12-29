<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after
 *
 * @package cobianzo
 */
?>

	</article> <!--abierto en header.php -->


	</div><!-- .row -->

	<footer id="footer" class="clearfix container" role="contentinfo">
		<div class='row-fluid'>
			<div class='col-sm-3 small'>
				<?php
					_e("Cobianzo Communication Ltd &copy;");
				?>
			</div>

			<?php
					wp_nav_menu( array(
						'menu'              => 'footer',
						'theme_location'    => 'footer',
						'depth'             => 2,
						'container'         => 'div',
						'container_class'   => 'col-sm-7 text-center',
						'container_id'      => '',
						'menu_class'        => 'navbar-nav nav',
						'fallback_cb'       => 'wp_bootstrap_navwalker::fallback',
						'walker'            => new wp_bootstrap_navwalker())
							);			
			?>

			<div class='col-sm-2 text-right small'>
				<?php _e("All right reserved"); ?>
			</div>	
		</div>
	</footer><!-- #footer -->
</div><!-- .container -->



<?php
//print_filters_for("wp_footer");
 wp_footer(); ?>

</body>
</html>
