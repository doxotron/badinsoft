<?php
/**
 * Created by PhpStorm.
 * User: Milos
 * Date: 5/30/2018
 * Time: 9:53 AM
 */
/*
 * Template Name: Team Page
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
					<div class="container site-section">
						<div class="row">
							<?php query_posts( array(
								'post_type' => 'employees'
							) );
							if ( have_posts() ):
								while ( have_posts() ) : the_post();
									?>
									<div class="col-md-4 col-sm-6 col-xs-12">
										<div class="service-primary">
											<div class="service-primary-inner">
												<?php the_post_thumbnail( 'full', [ 'class' => 'img-responsive' ] ) ?>
												<h6 class="text-white"><?php the_title(); ?></h6>
											</div>
											<div class="service-primary-description">
												<div class="text-white"><?php the_content(); ?></div>
											</div>
										</div>
									</div>
								<?php endwhile; endif;
							wp_reset_query(); // End of the loop. ?>
						</div>
						<div class="row">
							<div class="col-md-8 col-md-offset-2 col-sm-12 col-xs-12">
								<?php the_content(); ?>
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
