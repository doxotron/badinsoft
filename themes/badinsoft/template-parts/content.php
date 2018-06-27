<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package badinsoft
 */

?>
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
    <section class="post-head-section" style="background:url('<?php if ( has_post_thumbnail() ) {
		the_post_thumbnail_url( "full" );
	} else {
		echo get_template_directory_uri() . "/images/default_feat_img.png";
	} ?>') top center no-repeat fixed; -webkit-background-size: cover;background-size: cover;" data-type="background"
             data-speed="2">
        <div class="container site-section">
            <div class="row">
                <div class="col-xs-10">
					<?php
					if ( is_singular() ) :
						the_title( '<h1 class="text-white page-title">', '</h1>' );
					else :
						the_title( '<h1 class="text-white page-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' );
					endif;

					?>
                </div>
            </div>
        </div>
        <div class="front-scroll-cta"><span class="front-cta-line"></span></div>
    </section>
    <section>
        <div class="container page-content">
            <div class="row">
                <div class="col-md-3 col-sm-12 col-xs-12 blog-sidebar">
					<?php if ( 'post' === get_post_type() ) : ?>
                        <div class="entry-meta">
							<?php badinsoft_posted_on(); ?>
                        </div><!-- .entry-meta -->
					<?php
					endif; ?>
	                <?php badinsoft_entry_footer(); ?>
                    <div class="dot-separator"></div>
	                <?php if ( is_active_sidebar( 'share-sidebar' ) ) : ?>
                        <div id="secondary" class="widget-area" role="complementary">
			                <?php dynamic_sidebar( 'share-sidebar' ); ?>
                        </div>
	                <?php endif; ?>
                </div>
                <div class="col-md-9 col-sm-12 col-xs-12">
					<?php
					the_content( sprintf(
						wp_kses(
						/* translators: %s: Name of current post. Only visible to screen readers */
							__( 'Continue reading<span class="screen-reader-text"> "%s"</span>', 'badinsoft' ),
							array(
								'span' => array(
									'class' => array(),
								),
							)
						),
						get_the_title()
					) );

					wp_link_pages( array(
						'before' => '<div class="page-links">' . esc_html__( 'Pages:', 'badinsoft' ),
						'after'  => '</div>',
					) );
					?>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-9 col-md-offset-3 col-sm-12 col-xs-12 blog-sidebar">
                    <div class="dot-separator"></div>
	                <?php if ( is_active_sidebar( 'share-sidebar' ) ) : ?>
                        <div id="secondary" class="widget-area" role="complementary">
			                <?php dynamic_sidebar( 'share-sidebar' ); ?>
                        </div>
	                <?php endif; ?>
                    <div style="height:40px;"></div><!-- spacer -->
                </div>
            </div>
        </div>
    </section>
</article><!-- #post-<?php the_ID(); ?> -->
