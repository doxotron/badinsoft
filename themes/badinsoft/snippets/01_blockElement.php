<?php
/**
 * Created by PhpStorm.
 * User: Milos
 * Date: 6/5/2018
 * Time: 4:35 PM
 */
function blockElemFunc( $atts, $content = null ) {
	$a = shortcode_atts( array(
		'type' => 'div',
		'class' => '',
	), $atts );
	return "<".$a['type']." class='".$a['class']."'>".$content."</".$a['type'].">";
}

add_shortcode( 'block', 'blockElemFunc' );