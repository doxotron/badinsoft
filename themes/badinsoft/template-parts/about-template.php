<?php
/**
 * Created by PhpStorm.
 * User: Milos
 * Date: 6/29/2018
 * Time: 9:57 AM
 */
/*
 * Template Name: About Us Template
 */
get_header(); ?>
    <div id="primary" class="content-area">
        <main id="main" class="site-main">
			<?php while ( have_posts() ) : the_post(); ?>
                <article id="post-<?php the_ID(); ?>">
                    <section class="post-head-section" style="background:url('<?php if ( has_post_thumbnail() ) {
						the_post_thumbnail_url( "full" );
					} else {
						echo get_template_directory_uri() . "/images/default_feat_img.png";
					} ?>') top center no-repeat fixed; -webkit-background-size: cover;background-size: cover;" data-type="background" data-speed="2">
                        <div class="container site-section">
                            <div class="row">
                                <div class="col-xs-10">
									<?php
									if ( is_singular() ) :
										the_title( '<h1 class="text-white page-title">', '</h1>' );
									else :
										the_title( '<h1 class="text-white page-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h1>' );
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
                    <section class="industry-expertise">
                        <div class="container site-section">
                            <div class="row">
                                <div class="col-xs-12 page-content">
									<?php the_content(); ?>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="timeline-section"
                             style="background:#242832 url('<?php echo get_template_directory_uri() ?>/images/abstract_cover.jpg') no-repeat fixed top center;-webkit-background-size: cover;background-size: cover;">
                        <div class="container">
                            <h2 class="text-center">The journey so far</h2>

							<?php
							$timeline_count  = 0;
							$count_posts     = wp_count_posts( 'timeline' );
							$published_posts = $count_posts->publish;
							query_posts( array(
								'post_type' => 'timeline',
								'showposts' => - 1,
								'order'     => 'ASC'
							) );

							if ( have_posts() ): ?>

								<?php
								while ( have_posts() ) :
									the_post();
									?>
                                    <div class="row equal-height-row">
                                        <div class="col-xs-2 timeline-image <?php if ( $timeline_count > 0 ) {
											echo " timeline-image-middle ";
										}
										if ( ( $published_posts - 1 ) == $timeline_count ) {
											echo " timeline-image-last";
										} ?>">
											<?php the_post_thumbnail( 'full' ); ?>
                                        </div>
                                        <div class="col-xs-10 timeline-description">
                                            <h4><?php echo get_the_excerpt() ?></h4>
											<?php the_title( '<h3>', '</h3>' ); ?>
											<?php the_content() ?>

                                        </div>
                                    </div>

									<?php
									$timeline_count ++;

								endwhile; ?>

							<?php endif;
							wp_reset_query(); // End of the loop. ?>
                        </div>
                    </section>
                    <?php if (get_field('additional_content') != ""): ?>
                    <section class="industry-expertise page-content">
                        <div class="container">
                            <div class="row">
                                <div class="col-xs-12">
                                    <?php echo get_field('additional_content'); ?>
                                </div>
                            </div>
                        </div>
                    </section>
                    <?php endif; ?>
                    <section class="blue-section">
                        <div class="container">
                            <div class="row">
                                <div class="col-xs-12">
                                    <h2>Contact Us</h2>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2 col-sm-12 col-xs-12">
                                    <h3>Do you want us to help your business grow?</h3>
                                    <p>Contact us with a brief description or specification of your project and we will contact you shortly to learn more about your needs.</p>
									<?php echo do_shortcode( '[wpforms id="55" title="false" description="false"]' ); ?>
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


