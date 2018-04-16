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
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="container">
                            <div class="row">
                                <div class="col-xs-12">
                                    test
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </article>
        <?php endwhile; // End of the loop. ?>
    </main><!-- #main -->
</div><!-- #primary -->
<?php get_footer();
