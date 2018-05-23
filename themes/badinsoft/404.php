<?php
/**
 * The template for displaying 404 pages (not found)
 *
 * @link https://codex.wordpress.org/Creating_an_Error_404_Page
 *
 * @package badinsoft
 */

get_header(); ?>
    <div id="primary" class="content-area">
        <main id="main" class="site-main">
            <section class="error-404 not-found">
                <div class="container site-section">
                    <div class="row">
                        <div class="col-xs-12 text-center">
                            <header class="page-header">
                                <img class="img-responsive center-block"
                                     src="<?php echo get_template_directory_uri() ?>/images/404.png" alt="404">
                                <h1 class="page-title"><?php esc_html_e('Sorry, that page doesn&rsquo;t exist.', 'badinsoft'); ?></h1>
                            </header><!-- .page-header -->
                            <div class="page-content">
                                <a href="<?php echo esc_url(home_url('/')); ?>"
                                   title="<?php esc_html_e('Go back to home page', 'badinsoft'); ?>"><?php esc_html_e('&larr; Go back to home page', 'badinsoft'); ?></a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
    </div>
<?php

get_footer();
