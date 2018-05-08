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
                                <div class="col-md-4 col-sm-12 service">
                                    <div class="service-container">
                                        <img src="<?php echo get_template_directory_uri() ?>/images/cycle.png">
                                        <h3>Full Cycle Development</h3>
                                        <p>Complete project development, from earliest stages of requirement gathering,
                                            design and development, to ensuring your product is well tested and ready
                                            for every future challenge.</p>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-12 service">
                                    <div class="service-container">
                                        <img src="<?php echo get_template_directory_uri() ?>/images/maint.png">
                                        <h3>Software Maintenance</h3>
                                        <p>Job is never done, even after product launch. We can provide maintenance,
                                            tech support and training for all products developed by us.</p>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-12 service">
                                    <div class="service-container">
                                        <img src="<?php echo get_template_directory_uri() ?>/images/design.png">
                                        <h3>Design and Consulting</h3>
                                        <p>Treba tekst... We can help you create, launch and support unforgettable
                                            websites and web applications that will leave a mark on internet landscape,
                                            enhancing your online presence and value.</p>
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
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="container">
                        <div class="row">
                            <div class="col-xs-12 post-content">
								<?php the_content() ?>
                            </div>
                        </div>
                    </section>
                </article>
			<?php endwhile; // End of the loop. ?>
        </main><!-- #main -->
    </div><!-- #primary -->
<?php get_footer();
