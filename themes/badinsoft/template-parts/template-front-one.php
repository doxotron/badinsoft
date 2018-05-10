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
                    <section class="services-section svg-animation">
                        <div class="container">
                            <div class="row">
                                <div class="col-xs-12">
                                    <h2>Services we offer</h2>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-12 service">
                                    <div class="service-container">
                                        <div class="svg-icon">
                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 160 160"><style type="text/css">
                                                    .svg-background{opacity:0;fill:#317ADE;}
                                                    .line-dark{fill:none;stroke:#50555B;stroke-width:3px;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}
                                                    .svg-dark-filled{fill:#50555B;opacity:0;}
                                                    .line-light{fill:none;stroke:#317ADE;stroke-width:3px;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}
                                                    .thin-line{fill:none;stroke:#317ADE;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}
                                                </style>
                                                <path class="svg-background" d="M132.4 126.2h-100c-5.9 0-10.7-4.8-10.7-10.7V40c0-5.9 4.8-10.7 10.7-10.7h106c5.9 0 10.7 4.8 10.7 10.7v69.6C149 118.8 141.6 126.2 132.4 126.2z"/><path class="line-dark" d="M66.1 120.1H29c-6.8 0-12.2-5.5-12.2-12.2V36c0-6.8 5.5-12.2 12.2-12.2H131c6.8 0 12.2 5.5 12.2 12.2v71.9c0 6.8-5.5 12.2-12.2 12.2h-37v11.8h6c2.2 0 3.9 1.7 3.9 3.9l0 0c0 2.2-1.7 3.9-3.9 3.9H56.2"/><circle class="svg-dark-filled" cx="80" cy="108" r="3.7"/><path class="line-light" d="M39.8 35.4h87.5c2.4 0 4.3 1.9 4.3 4.3v53.7c0 2.4-1.9 4.3-4.3 4.3H31.5c-2.4 0-4.3-1.9-4.3-4.3V47.2"/><polyline class="line-light" points="64.8 81 51.2 67.4 64.8 53.8 "/><polyline class="line-light" points="95.2 81 108.8 67.4 95.2 53.8 "/><line class="line-light" x1="72" y1="84.8" x2="88" y2="48.5"/></svg>
                                        </div>
                                        <h3>Custom Software Development</h3>
                                        <p>Strategically built with your needs in mind, our custom software development
                                            solutions ensure you leave a unique mark on the internet’s landscape,
                                            enhancing your online presence and value.</p>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-12 service">
                                    <div class="service-container">
                                        <div class="svg-icon">
                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 160 160"><style type="text/css">
                                                </style><path class="svg-background" d="M114 152.5H49.1c-1.5 0-2.7-1.2-2.7-2.7V24c0-1.5 1.2-2.7 2.7-2.7h70.1c1.5 0 2.7 1.2 2.7 2.7v120.6C121.9 149 118.4 152.5 114 152.5z"/><path class="line-light" d="M109.8 41.1v83.8c0 2.3-1.8 4.1-4.1 4.1H54.3c-2.3 0-4.1-1.8-4.1-4.1V33.1c0-2.3 1.8-4.1 4.1-4.1h44.2"/><path class="line-dark" d="M42.6 132.5v-110c0-2.8 2.3-5.1 5.1-5.1h64.5c2.8 0 5.1 2.3 5.1 5.1v120.1c0 2.8-2.3 5.1-5.1 5.1H56.8"/><line class="line-dark" x1="68.8" y1="138.2" x2="91.3" y2="138.2"/><line class="line-dark" x1="75.8" y1="22.8" x2="84.2" y2="22.8"/></svg>
                                        </div>
                                        <h3>Mobile Development</h3>
                                        <p>To keep up with your always-on-the-go users, we provide mobile software
                                            solutions tailored to your specific needs. Always keep in touch with your
                                            customers across many popular platforms: Android, iOS, React Native, and
                                            others.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-12 service">
                                    <div class="service-container">
                                        <div class="svg-icon">
                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 160 160"><style type="text/css">
                                                </style><path class="svg-background" d="M140.1 135H23.4c-3.2 0-5.8-2.6-5.8-5.8V33.9c0-3.2 2.6-5.8 5.8-5.8h124.1c3.2 0 5.8 2.6 5.8 5.8v87.9C153.3 129.1 147.4 135 140.1 135z"/><path class="line-dark" d="M12.6 56.2V31.7c0-5.1 4.1-9.2 9.2-9.2h116.5c5.1 0 9.2 4.1 9.2 9.2v87.7c0 5.1-4.1 9.2-9.2 9.2H90.7"/><circle class="svg-dark-filled" cx="137.5" cy="32.5" r="3"/><circle class="svg-dark-filled" cx="126.5" cy="32.5" r="3"/><circle class="svg-dark-filled" cx="115.5" cy="32.5" r="3"/><path class="line-light" d="M87 69.4l4.6 9.3L88 82.1c-1.9 1.9-2.9 4.5-2.6 7.2v0c0.3 2.7 1.8 5.1 4.1 6.5l4.3 2.6 -2.5 10 -5 0.4c-2.7 0.2-5.1 1.6-6.6 3.9l0 0c-1.5 2.2-1.9 5.1-1 7.6l1.6 4.8 -8.3 6.1 -4.1-2.9c-2.2-1.6-5-2.1-7.6-1.3h0c-2.6 0.8-4.7 2.7-5.7 5.2l-1.9 4.7 -10.3-0.7 -1.2-4.9c-0.7-2.6-2.5-4.8-5-5.9l0 0c-2.5-1.1-5.3-1-7.7 0.3l-4.4 2.4 -7.4-7.1 2.2-4.5c1.2-2.4 1.2-5.3 0-7.7l0 0c-1.2-2.4-3.4-4.2-6.1-4.7l-4.9-1L6.8 92.7l4.6-2c2.5-1.1 4.3-3.3 4.9-5.9l0 0c0.6-2.6 0-5.4-1.6-7.5l-3.1-3.9 5.7-8.6 4.8 1.4c2.6 0.7 5.4 0.2 7.6-1.4l0 0c2.2-1.6 3.5-4.1 3.6-6.8l0.1-5 9.9-2.9 2.8 4.2c1.5 2.2 4 3.6 6.7 3.8h0c2.7 0.2 5.3-0.9 7.1-2.9l3.3-3.7 9.4 4.2 -0.5 5c-0.3 2.7 0.7 5.3 2.6 7.2l0 0"/><path class="thin-line" d="M71.9 93.4c0 12-9.7 21.7-21.7 21.7s-21.7-9.7-21.7-21.7 9.7-21.7 21.7-21.7c4 0 7.7 1.1 10.9 2.9"/></svg>
                                        </div>
                                        <h3>Support & Maintenance</h3>
                                        <p>Even after we hit the product launch milestone, our job is not done. We
                                            provide reliable maintenance, technical support, quality assurance, and
                                            training for all products we develop, assuring your software runs seamlessly
                                            with zero downtime.</p>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-12 service">
                                    <div class="service-container">
                                        <div class="svg-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 160 160"><style type="text/css">
                                            </style><path class="svg-background" d="M130.2 153.5H24.6c-2.7 0-4.9-2.2-4.9-4.9V34.3c0-2.7 2.2-4.9 4.9-4.9h114.3c2.7 0 4.9 2.2 4.9 4.9v105.6C143.8 147.4 137.7 153.5 130.2 153.5z"/><path class="line-dark" d="M136.1 65v71.9c0 5.1-4.1 9.2-9.2 9.2H21.8c-5.1 0-9.2-4.1-9.2-9.2V31.7c0-5.1 4.1-9.2 9.2-9.2h71.9"/><polyline class="line-light" points="46.2 88.5 38 120.9 70.4 112.7 146.1 37 144.5 27.2 131.7 14.4 121.9 12.8 55.8 78.8 "/><polyline class="line-light" points="135.1 48 133.5 38.2 120.7 25.4 110.9 23.8 "/><line class="line-dark" x1="125.3" y1="46.4" x2="74.7" y2="97.1"/><line class="line-dark" x1="113.1" y1="34.2" x2="62.4" y2="84.8"/><line class="line-light" x1="53.3" y1="117" x2="41.9" y2="105.6"/></svg>
                                        </div>
                                        <h3>Design & Consulting</h3>
                                        <p>If you need expert guidance for your new idea, product or a project, we’ve
                                            got you covered. Our designers will make sure you get the best advice and
                                            support in accordance to the world’s best practices to ensure your business
                                            challenges are properly addressed.</p>
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
                                    <p>Focusing on specific industries, such as banking and loyalty, helped our
                                        development and business teams gain more than 5 years of experience and
                                        knowledge in developing custom made solutions for some of the world’s leading
                                        companies in these areas. By combining industry-specific knowledge with an
                                        in-depth understanding of business processes, we are able to adequately help our
                                        clients at any stage of the project lifecycle.</p>
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
                                    <p>Creating value to end users and providing competitive advantage to our clients
                                        and partners requires a lot of dedication and knowledge. We strategically invest
                                        our time and resources in following and implementing leading technological
                                        trends into our everyday work. Our domain knowledge base is built upon Java,
                                        Javascript, web, mobile, and database technologies.</p>
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
													'showposts' => 3,
													'order'     => 'ASC'
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
                                <div class="col-xs-12">
                                    <h2>Our story</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In consectetur posuere
                                        enim, at suscipit mauris. Maecenas non nibh quis diam finibus iaculis.
                                        Pellentesque blandit sem quis dapibus sagittis. Pellentesque et ipsum lacus.
                                        Fusce quam enim, rutrum eu diam a, eleifend commodo augue. Morbi sodales
                                        porttitor eros, non condimentum eros sollicitudin non. Duis laoreet aliquam
                                        magna vel eleifend.</p>
                                </div>
                            </div>
                            <div class="row ceo-background">
                                <div class="col-md-3 col-sm-6 col-xs-12 align-right-mob-center ceo-word">
                                    <h3>Dušan Cvetković</h3>
                                    <span class="emphasized-preheadline">Badin Soft CTO</span>
                                    <p><br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In consectetur
                                        posuere
                                        enim, at suscipit mauris. Maecenas non nibh quis diam finibus iaculis.
                                        Pellentesque blandit sem quis dapibus sagittis. Pellentesque et ipsum lacus.
                                        Fusce quam enim, rutrum eu diam a, eleifend commodo augue.</p>
                                </div>
                                <div class="col-md-3 col-md-push-6 col-sm-6 col-xs-12 align-left-mob-center ceo-word">
                                    <h3>Božidar Ignjatović</h3>
                                    <span class="emphasized-preheadline">Badin Soft CEO</span>
                                    <p><br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In consectetur
                                        posuere
                                        enim, at suscipit mauris. Maecenas non nibh quis diam finibus iaculis.
                                        Pellentesque blandit sem quis dapibus sagittis. Pellentesque et ipsum lacus.
                                        Fusce quam enim, rutrum eu diam a, eleifend commodo augue.</p>
                                </div>
                            </div>
                        </div>
                    </section>
                </article>
			<?php endwhile; // End of the loop. ?>
        </main><!-- #main -->
    </div><!-- #primary -->
<?php get_footer();
