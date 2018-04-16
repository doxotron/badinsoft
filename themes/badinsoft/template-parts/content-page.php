<?php
/**
 * Template part for displaying page content in page.php
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package badinsoft
 */

?>
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
    <section class="post-head-section" style="background:url('<?php if (has_post_thumbnail()) { the_post_thumbnail_url("full");} else {echo get_template_directory_uri()."/images/default_feat_img.png";}?>') top center no-repeat fixed; -webkit-background-size: cover;background-size: cover;" data-type="background" data-speed="2">
        <div class="container site-section">
            <div class="row">
                <div class="col-xs-10">
                    <h1 class="text-white page-title"><?php the_title() ?></h1>
                </div>
            </div>
        </div>
        <div class="front-scroll-cta"><span class="front-cta-line"></span></div>
    </section>
    <section>
        <div class="container site-section">
            <div class="row">
                <div class="col-xs-12">
                    <?php the_content();?>
                </div>
            </div>
        </div>
    </section>
</article><!-- #post-<?php the_ID(); ?> -->
