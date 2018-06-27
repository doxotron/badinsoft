<?php
/**
 * The template for displaying comments
 *
 * This is the template that displays the area of the page that contains both the current comments
 * and the comment form.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package badinsoft
 */

/*
 * If the current post is protected by a password and
 * the visitor has not yet entered the password we will
 * return early without loading the comments.
 */
if ( post_password_required() ) {
	return;
}
?>
<div class="light-grey-section">
    <div id="comments" class="comments-area container ">
        <div class="row">
            <div class="col-md-9 col-md-offset-3 col-sm-12 col-xs-12">
				<?php
				// You can start editing here -- including this comment!
				if ( have_comments() ) :
					?>
                    <h2 class="comments-title">
						<?php
						$badinsoft_comment_count = get_comments_number();
						if ( '1' === $badinsoft_comment_count ) {
							printf(
							/* translators: 1: title. */
								esc_html__( 'One comment on &ldquo;%1$s&rdquo;', 'badinsoft' ),
								'<span>' . get_the_title() . '</span>'
							);
						} else {
							printf( // WPCS: XSS OK.
							/* translators: 1: comment count number, 2: title. */
								esc_html( _nx( '%1$s comment on &ldquo;%2$s&rdquo;', '%1$s comments on &ldquo;%2$s&rdquo;', $badinsoft_comment_count, 'comments title', 'badinsoft' ) ),
								number_format_i18n( $badinsoft_comment_count ),
								'<span>' . get_the_title() . '</span>'
							);
						}
						?>
                    </h2><!-- .comments-title -->

					<?php the_comments_navigation(); ?>

                    <ul class="comment-list">
						<?php
						wp_list_comments( array(
							'style'      => 'ul',
							'short_ping' => true,
						) );
						?>
                    </ul><!-- .comment-list -->

					<?php
					the_comments_navigation();

					// If comments are closed and there are comments, let's leave a little note, shall we?
					if ( ! comments_open() ) :
						?>
                        <p class="no-comments"><?php esc_html_e( 'Comments are closed.', 'badinsoft' ); ?></p>
					<?php
					endif;

				endif; // Check for have_comments().

				comment_form();
				?>
            </div>
        </div>


    </div><!-- #comments -->
</div>