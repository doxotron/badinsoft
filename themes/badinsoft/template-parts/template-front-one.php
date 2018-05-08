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
        <?php while (have_posts()) : the_post(); ?>
        <article id="post-<?php the_ID(); ?>">
            <section class="front-slider">
                <?php echo do_shortcode(get_field('slider_shortcode')); ?>
            </section>
            <section class="trusted-companies">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <h2>Trusted by the dozen companies around the world</h2>
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
