<?php
/**
 * Created by PhpStorm.
 * User: Milos
 * Date: 6/28/2018
 * Time: 12:08 PM
 */
/*
 * Template Name: Portfolio Page
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
					} ?>') top center no-repeat fixed; -webkit-background-size: cover;background-size: cover;"
                             data-type="background" data-speed="2">
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
									<?php endif; ?>
                                </div>
                            </div>
                        </div>
                        <div class="front-scroll-cta"><span class="front-cta-line"></span></div>
                    </section>
                    <section class="industry-expertise">
                        <div class="container">
                            <div class="row">
                                <div class="col-xs-12">
                                    <?php the_content(); ?>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="services-section portfolio-section">
                        <div class="container">
                            <h2 class="text-center">What our clients are saying about us</h2>
							<?php
							$testimonial_count = 0;
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
                                    <div class="row">
                                        <div class="col-md-3 col-sm-12 <?php if ( $testimonial_count == 0 || $testimonial_count % 2 == 0 ) {
											echo "align-right-mob-center";
										} else {
											echo "col-md-push-8 align-left-mob-center";
										} ?> text-section">
											<?php if ( has_post_thumbnail() ) {
												the_post_thumbnail( 'medium', array( 'class' => 'img-responsive img-circle', 'style' => 'max-width:200px; display:inline-block;' ) );
											} else {
												$defaultImage = get_template_directory_uri();
												echo "<img src='$defaultImage/images/default_testimonial_img.png' class='responsive img-circle' style='max-width:200px; display:inline-block;'>";
											}
											?>
                                        </div>
                                        <div class="col-md-8 col-sm-12 <?php if ( $testimonial_count == 0 || $testimonial_count % 2 == 0 ) {
											echo "align-left-mob-center";
										} else {
											echo "col-md-pull-3 align-right-mob-center";
										} ?> text-section">
											<?php the_content(); ?>
                                        </div>
                                    </div>
									<?php
									$testimonial_count ++;
								endwhile; ?>

							<?php endif;
							wp_reset_query(); // End of the loop. ?>

                        </div>
                    </section>
	                <?php
	                $studies_count = 0;
	                query_posts( array(
		                'post_type' => 'studies',
		                'showposts' => - 1,
		                'order'     => 'ASC'
	                ) );

	                if ( have_posts() ): ?>
                    <section class="ceo-section light-grey-section">
                        <div class="container">
                            <h2 class="text-center">Case studies</h2>
                            <div class="row">


									<?php
									while ( have_posts() ) :
										the_post();
										?>

                                        <div class="col-md-6 col-sm-12">
                                            <a href="<?php the_permalink()?>" class="no-style">
											<?php if ( has_post_thumbnail() ) {
												the_post_thumbnail( 'full', array( 'class' => 'img-responsive img-rounded' ) );
											} else {
												$defaultImage = get_template_directory_uri();
												echo "<img src='$defaultImage/images/abstract_cover2.jpg' class='img-responsive'>";
											}
											?>
                                            </a>
                                            <a href="<?php the_permalink()?>" class="no-style">
                                            <h3 class="text-left text-bold"><?php the_title() ?></h3>
                                            </a>
                                            <div class="text-left">
                                            <?php the_excerpt() ?>
                                                <a href="<?php the_permalink()?>" class="line-link">Read more</a>
                                            </div>

                                        </div>
										<?php if ( $studies_count != 0 && $studies_count % 2 == 0 ) {
										echo "</div><div class='row'>";
									} ?>
										<?php
										$studies_count++;
									endwhile; ?>


                            </div>
                        </div>
                    </section>
	                <?php endif;
	                wp_reset_query(); // End of the loop. ?>
                    <section class="blue-section">
                        <div class="container">
                            <div class="row">
                                <div class="col-xs-12">
                                    <h2>Hire Us!</h2>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2 col-sm-12 col-xs-12">
                                    <h3>Do you want us to help your business grow?</h3>
                                    <p>&nbsp;</p>
					                <a class="button white-button" href="/contact-us">Connect with us now</a>
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
