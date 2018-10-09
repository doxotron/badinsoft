<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package badinsoft
 */

?>

	</div><!-- #content -->

<footer>
    <div class="container footer-section">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12 text-center-xs">
                <?php if ( is_active_sidebar( 'footer-1' ) ) : ?>
                    <div id="secondary" class="widget-area" role="complementary">
                        <?php dynamic_sidebar( 'footer-1' ); ?>
                    </div>
                <?php endif; ?>
                <nav id="footer-social" class="footer-social">
		            <?php
		            wp_nav_menu( array(
			            'theme_location' => 'menu-social',
			            'menu_id'        => 'social-footer-menu',
		            ) );
		            ?>
                </nav>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12 text-center-xs">
                <?php if ( is_active_sidebar( 'footer-2' ) ) : ?>
                    <div id="secondary" class="widget-area" role="complementary">
                        <?php dynamic_sidebar( 'footer-2' ); ?>
                    </div>
                <?php endif; ?>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12 text-center-xs">
                <?php if ( is_active_sidebar( 'footer-3' ) ) : ?>
                    <div id="secondary" class="widget-area" role="complementary">
                        <?php dynamic_sidebar( 'footer-3' ); ?>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    </div>
    <div class="container-fluid footer-copyright">
        <div class="row">
            <div class="col-xs-12">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 text-center">
                            <?php if ( is_active_sidebar( 'bottom-footer' ) ) : ?>
                                <div id="secondary" class="widget-area" role="complementary">
                                    <?php dynamic_sidebar( 'bottom-footer' ); ?>
                                </div>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
</div><!-- #page -->
<a href="#top" class="back-top-fixed back-top-hidden"><i class="fa fa-chevron-up" aria-hidden="true"></i></a>
<?php wp_footer(); ?>

</body>
</html>
