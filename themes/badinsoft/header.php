<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package badinsoft
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="http://gmpg.org/xfn/11">
    <link href="https://fonts.googleapis.com/css?family=Fira+Sans:400,700|Roboto:300,400,400i,700,700i"
          rel="stylesheet">
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-91648675-1', 'auto');
        ga('send', 'pageview');

    </script>

    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="page" class="site">
    <header id="masthead" class="site-header">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 main-menu">
                    <div class="site-branding">
					    <?php the_custom_logo(); ?>
                    </div>
                    <nav id="site-navigation" class="main-navigation">
					    <?php
					    wp_nav_menu(array(
						    'theme_location' => 'menu-1',
						    'menu_id' => 'primary-menu',
					    ));
					    ?>
                    </nav>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </header><!-- #masthead -->

    <div id="content" class="site-content">