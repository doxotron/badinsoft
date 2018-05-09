<?php
/**
 * Created by PhpStorm.
 * User: MilosM
 * Date: 4/3/2018
 * Time: 3:07 PM
 */
/*
Template Name: Front Page Slider
*/
get_header(); ?>

    <div id="primary" class="content-area">
        <main id="main" class="site-main">
			<?php while ( have_posts() ) : the_post(); ?>
                <article id="post-<?php the_ID(); ?>">
                    <section class="front-slider">
						<?php echo do_shortcode( get_field( 'slider_shortcode' ) ); ?>
                    </section>
                    <section class="trusted-companies">
                        <div class="container">
                            <div class="row">
                                <div class="col-xs-12">
                                    <h2>Trusted by dozens of companies around the world</h2>
                                </div>
                                <div class="col-md-2 col-sm-4 col-xs-6">
                                    <p>logo</p>
                                </div>
                                <div class="col-md-2 col-sm-4 col-xs-6">
                                    <p>logo</p>
                                </div>
                                <div class="col-md-2 col-sm-4 col-xs-6">
                                    <p>logo</p>
                                </div>
                                <div class="col-md-2 col-sm-4 col-xs-6">
                                    <p>logo</p>
                                </div>
                                <div class="col-md-2 col-sm-4 col-xs-6">
                                    <p>logo</p>
                                </div>
                                <div class="col-md-2 col-sm-4 col-xs-6">
                                    <p>logo</p>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="services-section">
                        <div class="container">
                            <div class="row">
                                <h2>Services we offer</h2>
                                <div class="col-md-6 col-sm-12 service">
                                    <div class="service-container">
                                        <img src="<?php echo get_template_directory_uri() ?>/images/cycle.png">
                                        <h3>Web Development</h3>
                                        <p>We help you create, launch, and maintain unforgettably responsive websites
                                            and web applications that will leave a unique mark on the internet’s
                                            landscape, enhancing your online presence and value. </p>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-12 service">
                                    <div class="service-container">
                                        <img src="<?php echo get_template_directory_uri() ?>/images/cycle.png">
                                        <h3>Mobile Development</h3>
                                        <p>To keep up with your always-on-the-go users, we provide mobile software
                                            development tailored to your specific needs. Keep in touch with your
                                            customers across many popular platforms: Android, iOS, React Native, Windows
                                            Phone and others.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-12 service">
                                    <div class="service-container">
                                        <img src="<?php echo get_template_directory_uri() ?>/images/maint.png">
                                        <h3>Support & Maintenance</h3>
                                        <p>Even after we hit the product launch milestone, our job is not done. We
                                            provide reliable maintenance, technical support and training for all
                                            products we develop.</p>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-12 service">
                                    <div class="service-container">
                                        <img src="<?php echo get_template_directory_uri() ?>/images/design.png">
                                        <h3>Design and Consulting</h3>
                                        <p>If you need expert guidance for your new idea, product or a project, we’ve
                                            got you covered. Our designers will make sure you get the best advice and
                                            support in accordance to the world’s best practices.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12" style="padding-top:40px; padding-bottom:30px;">
                                    <a href="#" class="button secondary-button">More about our services</a>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="industry-expertise">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-5 col-sm-12 align-right-mob-center">
                                    <img src="<?php echo get_template_directory_uri() ?>/images/illustration_pending.png"
                                         class="img-responsive">
                                </div>
                                <div class="col-md-7 col-sm-12 align-left-mob-center text-section">
                                    <span class="emphasized-preheadline">Leaders in</span>
                                    <h2>Banking and Loyalty systems</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In consectetur posuere
                                        enim, at suscipit mauris. Maecenas non nibh quis diam finibus iaculis.
                                        Pellentesque blandit sem quis dapibus sagittis. Pellentesque et ipsum lacus.
                                        Fusce quam enim, rutrum eu diam a, eleifend commodo augue. Morbi sodales
                                        porttitor eros, non condimentum eros sollicitudin non. Duis laoreet aliquam
                                        magna vel eleifend.</p>
                                    <a href="#" class="line-link">Read More</a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-5 col-sm-12 col-md-push-7 align-left-mob-center">
                                    <img src="<?php echo get_template_directory_uri() ?>/images/illustration_pending.png"
                                         class="img-responsive">
                                </div>
                                <div class="col-md-7 col-md-pull-5 col-sm-12 align-right-mob-center text-section">
                                    <span class="emphasized-preheadline">We're modern</span>
                                    <h2>Our Technology</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In consectetur posuere
                                        enim, at suscipit mauris. Maecenas non nibh quis diam finibus iaculis.
                                        Pellentesque blandit sem quis dapibus sagittis. Pellentesque et ipsum lacus.
                                        Fusce quam enim, rutrum eu diam a, eleifend commodo augue. Morbi sodales
                                        porttitor eros, non condimentum eros sollicitudin non. Duis laoreet aliquam
                                        magna vel eleifend.</p>
                                    <a href="#" class="line-link">Read More</a>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="testimonials-section">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6 col-sm-12 align-right-mob-center">
                                    <div class="testimonial-left">
                                        <div class="swiper-container">
                                            <div class="swiper-wrapper">
												<?php
												query_posts( array(
													'post_type' => 'testimonials',
													'showposts' => 3
												) );
												if ( have_posts() ): ?>
													<?php
													while ( have_posts() ) :
														the_post();
														?>
                                                        <div class="swiper-slide testimonial-single">
															<?php if ( has_post_thumbnail() ) {
																the_post_thumbnail( 'medium', array( 'class' => 'img-circle' ) );
															} else {
																$defaultImage = get_template_directory_uri();
																echo "<img src='$defaultImage/images/default_testimonial_img.png' class='img-circle'>";
															}
															?>
															<?php the_content(); ?>

                                                        </div>
													<?php endwhile; ?>

												<?php endif;
												wp_reset_query(); // End of the loop. ?>
                                            </div>
                                            <!-- Add Pagination -->
                                            <div class="swiper-pagination swiper-pagination-white"></div>
                                            <!-- Add Arrows -->
                                            <div class="swiper-button-next swiper-button-white"></div>
                                            <div class="swiper-button-prev swiper-button-white"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-12 align-left-mob-center">
                                    <div class="testimonial-right">
										<?php
										query_posts( array(
											'post_type' => 'studies',
											'showposts' => 1
										) );
										if ( have_posts() ): ?>
											<?php
											while ( have_posts() ) :
												the_post();
												?>
                                                <a href="<?php the_permalink() ?>" class="image-link">
													<?php if ( has_post_thumbnail() ) {
														the_post_thumbnail( 'full', array( 'class' => 'img-responsive' ) );
													} else {
														$defaultImage = get_template_directory_uri();
														echo "<img src='$defaultImage/images/default_testimonial_img.png' class='img-circle'>";
													}
													?>
                                                </a>
                                                <a href="<?php the_permalink() ?>"><?php the_title( '<h3>', '</h3>' ) ?></a>
												<?php the_excerpt(); ?>
                                                <a href="<?php the_permalink() ?>" class="line-link line-link-white">Read
                                                    More</a>
											<?php endwhile; ?>

										<?php endif;
										wp_reset_query(); // End of the loop. ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="ceo-section">
                        <div class="container">
                            <div class="row">
                                <h2>Our story</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In consectetur posuere
                                    enim, at suscipit mauris. Maecenas non nibh quis diam finibus iaculis.
                                    Pellentesque blandit sem quis dapibus sagittis. Pellentesque et ipsum lacus.
                                    Fusce quam enim, rutrum eu diam a, eleifend commodo augue. Morbi sodales
                                    porttitor eros, non condimentum eros sollicitudin non. Duis laoreet aliquam
                                    magna vel eleifend.</p>
                            </div>
                            <div class="row ceo-background">
                                <div class="col-md-3 col-sm-6 col-xs-12 align-right-mob-center ceo-word">
                                    <h3>Dušan Cvetković</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In consectetur posuere
                                        enim, at suscipit mauris. Maecenas non nibh quis diam finibus iaculis.
                                        Pellentesque blandit sem quis dapibus sagittis. Pellentesque et ipsum lacus.
                                        Fusce quam enim, rutrum eu diam a, eleifend commodo augue. Morbi sodales
                                        porttitor eros, non condimentum eros sollicitudin non. Duis laoreet aliquam
                                        magna vel eleifend.</p>
                                </div>
                                <div class="col-md-3 col-md-push-6 col-sm-6 col-xs-12 align-left-mob-center ceo-word">
                                    <h3>Božidar Ignjatović</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In consectetur posuere
                                        enim, at suscipit mauris. Maecenas non nibh quis diam finibus iaculis.
                                        Pellentesque blandit sem quis dapibus sagittis. Pellentesque et ipsum lacus.
                                        Fusce quam enim, rutrum eu diam a, eleifend commodo augue. Morbi sodales
                                        porttitor eros, non condimentum eros sollicitudin non. Duis laoreet aliquam
                                        magna vel eleifend.</p>
                                </div>
                            </div>
                        </div>
                    </section>
                </article>
			<?php endwhile; // End of the loop. ?>
        </main><!-- #main -->
    </div><!-- #primary -->
<?php get_footer();
