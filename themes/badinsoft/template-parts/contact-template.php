<?php
/**
 * Created by PhpStorm.
 * User: Milos
 * Date: 11-May-18
 * Time: 22:30
 */
/*
 * Template Name: Contact Page
 */
get_header(); ?>
	<div id="primary" class="content-area">
		<main id="main" class="site-main">
			<?php while ( have_posts() ) : the_post(); ?>
				<article id="post-<?php the_ID(); ?>">
					<section class="post-head-section" style="background:url('<?php if (has_post_thumbnail()) { the_post_thumbnail_url("full");} else {echo get_template_directory_uri()."/images/default_feat_img.png";}?>') top center no-repeat fixed; -webkit-background-size: cover;background-size: cover;" data-type="background" data-speed="2">
						<div class="container site-section">
							<div class="row">
								<div class="col-xs-10">
									<?php
									if ( is_singular() ) :
										the_title( '<h1 class="text-white page-title">', '</h1>' );
									else :
										the_title( '<h1 class="text-white page-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' );
									endif;

									if ( 'post' === get_post_type() ) : ?>
										<div class="entry-meta">
											<?php badinsoft_posted_on(); ?>
										</div><!-- .entry-meta -->
									<?php
									endif; ?>
								</div>
							</div>
						</div>
						<div class="front-scroll-cta"><span class="front-cta-line"></span></div>
					</section>
					<section>
						<div class="container page-content">
							<div class="row">
								<div class="col-md-8 col-md-offset-2 col-sm-12 col-xs-12">
									<?php the_content();?>
									<div class="contact-section">
										<?php echo do_shortcode( '[wpforms id="55" title="false" description="false"]' ) ?>
									</div>
								</div>
							</div>
						</div>
					</section>
				</article>
			<?php endwhile; // End of the loop. ?>
		</main>
	</div>
<?php

get_footer();
