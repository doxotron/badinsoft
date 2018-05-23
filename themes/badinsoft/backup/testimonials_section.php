<?php
/**
 * Created by PhpStorm.
 * User: MilosM
 * Date: 5/15/2018
 * Time: 12:08 PM
 */
?>
<section class="testimonials-section">
    <div class="container">
        <div class="row">
			<?php $studies_exist = 0; ?>
            <div class="<?php if ( $studies_exist == 0 ) {
				echo ' col-md-6 ';
			} else {
				echo ' col-md-12 ';
			} ?> col-sm-12 align-right-mob-center">
                <div class="testimonial-left">
                    <h2 style="margin-bottom:40px; margin-top:0;">Client testimonials</h2>
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
							<?php
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
                                    <div class="swiper-slide testimonial-single">
										<?php if ( has_post_thumbnail() ) {
											the_post_thumbnail( 'medium', array( 'class' => 'img-circle' ) );
										} else {
											$defaultImage = get_template_directory_uri();
											echo "<img src='$defaultImage/images/default_testimonial_img.png' class='img-circle'>";
										}
										?>
										<?php the_content(); ?>

                                    </div>
								<?php endwhile; ?>

							<?php endif;
							wp_reset_query(); // End of the loop. ?>
                        </div>
                        <!-- Add Pagination -->
                        <div class="swiper-pagination swiper-pagination-white"></div>
                        <!-- Add Arrows -->
                        <div class="swiper-button-next swiper-button-white"></div>
                        <div class="swiper-button-prev swiper-button-white"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-sm-12 align-left-mob-center">
                <div class="testimonial-right">
					<?php
					query_posts( array(
						'post_type' => 'studies',
						'showposts' => 1
					) );
					if ( have_posts() ):
						$studies_exist = 1;
						?>
						<?php
						while ( have_posts() ) :
							the_post();
							?>
                            <a href="<?php the_permalink() ?>" class="image-link">
								<?php if ( has_post_thumbnail() ) {
									the_post_thumbnail( 'full', array( 'class' => 'img-responsive' ) );
								} else {
									$defaultImage = get_template_directory_uri();
									echo "<img src='$defaultImage/images/default_testimonial_img.png' class='img-circle'>";
								}
								?>
                            </a>
                            <a href="<?php the_permalink() ?>"><?php the_title( '<h3>', '</h3>' ) ?></a>
							<?php the_excerpt(); ?>
                            <a href="<?php the_permalink() ?>" class="line-link line-link-white">Read
                                More</a>
						<?php endwhile; ?>

					<?php endif;
					wp_reset_query(); // End of the loop. ?>
                </div>
            </div>
        </div>
    </div>
</section>