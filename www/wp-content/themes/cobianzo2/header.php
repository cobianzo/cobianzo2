<?php
/**
 * The header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="content">
 *
 * @package cobianzo
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php wp_title( '|', true, 'right' ); ?></title>
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">

<?php wp_head(); 
	# using  gogole webfont
?>

<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic,700|Dancing+Script|Arvo:400,700|Quicksand' rel='stylesheet' type='text/css'>
</head>

<body <?php body_class(); ?>>


<!-- Page Content. Adding Local business schema -->
<div class="container"  itemscope itemtype="http://schema.org/LocalBusiness">
	<div class=row>
	
		<header class='clearfix' id='header'>
	    
			<nav id='primary-menu'  role="navigation" class="navbar navbar-default navbar-right navbar-fixed-top container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
		
				<!-- LOGO -->
				<h1 class='text-left col-sm-3 col-xs-8'>			
					<a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home" title='<?php echo esc_attr(get_option( 'description' )); ?>'>
						<b class='site-title hide-faraway'  itemprop="name"><?php bloginfo( 'blogname' ); ?></b>
						<img  itemprop="image"  id='the-logo' alt='<?php echo esc_attr(get_option( 'blogname' )).__('logo'); ?>' src='<?php echo get_template_directory_uri() ?>/imgs/logopantene.png' >
					</a>
				</h1>		
			</div>
			<!-- Collection of nav links and other content for toggling <div id='navbarCollapse' class='collapse navbar-collapse'> -->
			<div id='border-bottom-container'>
			 <?php
						// first we see if we have to add facebook , twitter or skype links to the menu
						$items_wrap		= '<ul id="%1$s" class="%2$s">%3$s</ul>';
						$twitter_link	= "https://twitter.com/cobianzoco";
						if ($twitter_link) {
							$twitter_link	= '<li><a title="'.__('Follow us in twitter').'" href="'.$twitter_link.'" class="social social-small twitter"><img src="'.get_template_directory_uri().'/imgs/social-sprite.gif"></a></li>';
							$items_wrap		= str_replace('%3$s</ul>', '%3$s '.$twitter_link.'</ul>', $items_wrap);
						}

						
							wp_nav_menu( array(
						'menu'              => 'primary',
						'theme_location'    => 'primary',
						'depth'             => 2,
						'container'         => 'div',
						'container_class'   => 'collapse navbar-collapse',
						'container_id'      => 'navbarCollapse',
						'menu_class'        => 'nav navbar-nav',
						'fallback_cb'       => 'wp_bootstrap_navwalker::fallback',
						'walker'            => new wp_bootstrap_navwalker(),
						'items_wrap'		=> $items_wrap, )
							);
			 ?>	
			 
				
			 </div>
			</nav>

		</header>




	<article id=important-content class='row-fluid' role=main>
	
<?php	# quedan abiertos .container, .row, y article	?>
