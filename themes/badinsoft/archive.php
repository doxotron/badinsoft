<?php
/**
 * The template for displaying archive pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package badinsoft
 */

get_header();
?>

	<div id="primary" class="content-area">
		<main id="main" class="site-main">

		<?php if ( have_posts() ) : ?>
            <header>
                <section class="post-head-section" style="background:url('<?php if (has_post_thumbnail()) { the_post_thumbnail_url("full");} else {echo get_template_directory_uri()."/images/default_feat_img.png";}?>') top center no-repeat fixed; -webkit-background-size: cover;background-size: cover;" data-type="background" data-speed="2">
                    <div class="container site-section">
                        <div class="row">
                            <div class="col-xs-10">
                                <h1 class="text-white page-title"><?php
	                                the_archive_title( '<h1 class="page-title text-white">', '</h1>' );
	                                the_archive_description( '<div class="archive-description text-white">', '</div>' );
	                                ?></h1>
                            </div>
                        </div>
                    </div>
                    <div class="front-scroll-cta"><span class="front-cta-line"></span></div>
                </section>
            </header>

			<?php
			/* Start the Loop */
			while ( have_posts() ) :
				the_post();

				/*
				 * Include the Post-Type-specific template for the content.
				 * If you want to override this in a child theme, then include a file
				 * called content-___.php (where ___ is the Post Type name) and that will be used instead.
				 */
				get_template_part( 'template-parts/postlist', get_post_type() );

			endwhile;

			the_posts_navigation();

		else :

			get_template_part( 'template-parts/content', 'none' );

		endif;
		?>

		</main><!-- #main -->
	</div><!-- #primary -->

<?php
//get_sidebar();
get_footer();
