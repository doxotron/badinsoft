<?php
/**
 * Created by PhpStorm.
 * User: Milos
 * Date: 6/27/2018
 * Time: 1:14 PM
 */

/*
 * Template for displaying posts list
 */
?>
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

	<section>
		<div class="container">
			<?php
			if ( is_singular() ) :
				the_title( '<h2>', '</h2>' );
			else :
				the_title( '<h2><a href="' . esc_url( get_permalink() ) . '" rel="bookmark" class="no-style">', '</a></h2>' );
			endif;

			?>
		</div>
	</section>
    <section>
        <div class="container">
            <div class="row">
	            <?php if(has_post_thumbnail()): ?>
	            <div class="col-md-3 col-sm-12 col-xs-12 blog-image">
		            <?php the_post_thumbnail('medium', array('class' => 'img-responsive')); ?>
	            </div>
	            <?php endif; ?>
                <div class="col-md-9 col-sm-12 col-xs-12">
	                <?php if ( 'post' === get_post_type() ) : ?>
		                <div class="entry-meta list-time">
			                <?php badinsoft_posted_on(); ?>
			                <?php
			                $wpm = str_word_count(get_the_content()) / 150;
			                $readtime = "";
			                if ($wpm < 1) {
			                	$readtime = "< 1 min read";
			                } else if ($wpm == 1) {
				                $readtime = "1 min read";
			                } else {
			                	$wpm_rounded = round($wpm);
				                $readtime = "$wpm_rounded mins read";
			                }
			                echo "<span class='posted-on'> / </span><span class='read-time'>$readtime</span>";
			                ?>
		                </div><!-- .entry-meta -->
	                <?php
	                endif; ?>
	                <?php
					the_excerpt();
					?>
	                <a href="<?php the_permalink() ?>" class="line-link">Read More</a>
                </div>
            </div>
	        <div class="dot-separator"></div>
        </div>
    </section>
</article><!-- #post-<?php the_ID(); ?> -->