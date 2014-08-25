<?php
/**
 * Jetpack Compatibility File
 * See: http://jetpack.me/
 *
 * @package cobianzo
 */

/**
 * Add theme support for Infinite Scroll.
 * See: http://jetpack.me/support/infinite-scroll/
 */
function cobianzo_jetpack_setup() {
	add_theme_support( 'infinite-scroll', array(
		'container' => 'main',
		'footer'    => 'page',
	) );
}
add_action( 'after_setup_theme', 'cobianzo_jetpack_setup' );
