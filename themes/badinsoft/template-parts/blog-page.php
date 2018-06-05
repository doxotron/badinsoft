<?php
/**
 * Created by PhpStorm.
 * User: Milos
 * Date: 6/5/2018
 * Time: 3:46 PM
 */
/*
 * Template Name: Blog Page
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
                    <section>
                        <div class="container site-section">
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2 col-sm-12 col-xs-12">
									<?php the_content(); ?>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-10 col-md-offset-1 col-sm-12 col-xs-12">
									<?php query_posts( array(
										'post_type' => 'post'
									) );
									if ( have_posts() ):
									while ( have_posts() ) :
									the_post();
									?>

                                    <div class="row blog-post-row">
										<?php if ( has_post_thumbnail() ): ?>
                                        <div class="col-md-4 col-sm-4 col-xs-12 blog-image">
											<?php the_post_thumbnail( 'medium', [ 'class' => 'img-responsive' ] ) ?>
                                        </div>
                                        <div class="col-md-8 col-sm-8 col-xs-12">
											<?php else: ?>
                                            <div class="col-md-12">
												<?php endif; ?>
                                                <a href="<?php the_permalink(); ?>"><h2><?php the_title(); ?></h2>
                                                </a>
												<?php the_excerpt(); ?>
                                                <a href="<?php the_permalink(); ?>" class="line-link">Read more</a>
                                            </div>
                                        </div>

										<?php endwhile;
										endif;
										wp_reset_query(); // End of the loop. ?>
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
