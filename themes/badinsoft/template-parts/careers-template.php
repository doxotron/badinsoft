<?php
/**
 * Created by PhpStorm.
 * User: MilosM
 * Date: 5/11/2018
 * Time: 2:32 PM
 */
/*
Template Name: Jobs Page
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
							<?php
							// the query
							$wpb_all_query = new WP_Query( array( 'post_type'      => 'jobs',
							                                      'post_status'    => 'publish',
							                                      'posts_per_page' => - 1
							) ); ?>

							<?php if ( $wpb_all_query->have_posts() ) : ?>
								<!-- the loop -->
								<?php while ( $wpb_all_query->have_posts() ) : $wpb_all_query->the_post(); ?>
									<div class="row post-row">
										<div class="col-md-4 col-sm-12 col-xs-12">
											<?php if (get_field('custom_image') != '' ) { ?>
                                            <img src="<?php echo get_field('custom_image') ?>" class="img-responsive img-rounded">
                                            <?php
											} else {
												$defaultImage = get_template_directory_uri();
												echo "<img src='$defaultImage/images/default_feat_img.png' class='img-responsive'>";
											}
											?>
										</div>
										<div class="col-md-8 col-sm-12 col-xs-12">
											<a href="<?php the_permalink(); ?>"><h4><?php the_title(); ?></h4></a>
											<p><?php the_excerpt(); ?></p>
											<p><a href="<?php the_permalink(); ?>">Read more &raquo;</a></p>
										</div>
									</div>
								<?php endwhile; ?>
								<!-- end of the loop -->
								<?php wp_reset_postdata(); ?>

							<?php else : ?>
								<p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
							<?php endif; ?>
						</div>
					</section>
				</article>
			<?php endwhile; // End of the loop. ?>
		</main>
	</div>
<?php

get_footer();