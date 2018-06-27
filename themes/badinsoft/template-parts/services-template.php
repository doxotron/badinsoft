<?php
/**
 * Created by PhpStorm.
 * User: MilosM
 * Date: 5/11/2018
 * Time: 2:05 PM
 */
/*
 * Template Name: Services
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
                    <section class="light-grey-section">
                        <div  class="container site-section">
                            <div class="row">
                                <div class="col-md-10 col-md-offset-1 col-sm-12 col-xs-12">
				                    <?php the_content(); ?>
                                </div>
                            </div>
                        </div>
                        <!-- spacer --><div style="height: 40px;"></div>
                    </section>
                    <section>
						<div  class="container site-section">
							<div class="col-md-10 col-md-offset-1 col-sm-12 col-xs-12">
                                <h2 class="text-black text-center"><br>Technologies we use<br></h2>
								<?php
								$counter=1;
								query_posts( array(
									'post_type' => 'technologies',
									'order'     => 'ASC'
								) );
								if ( have_posts() ):
									while ( have_posts() ) : the_post();
										?>
										<?php if ($counter == 0 || $counter % 2 != 0) {echo "<div class='row'>";}?>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="service-content">
												<div class="service-content-inner">
													<?php the_post_thumbnail( 'full', [ 'class' => 'img-responsive' ] ) ?>
													<h4 class="text-bold"><?php the_title(); ?></h4>
													<?php the_content(); ?>
												</div>
											</div>
										</div>
										<?php if ($counter % 2 == 0) {echo "</div><hr class='hidden-xs'>";}?>
										<?php $counter++; endwhile; endif;
								wp_reset_query(); // End of the loop. ?>
							</div>
						</div>
					</section>
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
                                    <?php echo do_shortcode('[wpforms id="55" title="false" description="false"]'); ?>
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


