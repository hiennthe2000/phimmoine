<?php
get_header();
get_template_part('sections/menu-main');
?>
<?php if (have_posts()):
  while (have_posts()):
    the_post(); ?>
<div class="single-box">
    <div class="container">
        <main class="row single-movie">
            <article class="col-md-8">
                <section class="movie-detail bg-movie">
                    <div class="row">
                        <figure class="movie-detail-banner col-12">
                            <div class="progress-bar"></div>
                            <div class="loading-video">
                                <p style="margin-bottom: 0; color: #ffffff;">Vui lòng chờ vài giây...</p>
                                <img class="loading" src="<?php echo get_template_directory_uri() ?>/images/loading.svg"
                                    alt="">
                            </div>
                            <?php
                  $link_movie = get_post_meta(get_the_ID(), 'link_movie', true);
               echo $link_movie; ?>
                        </figure>

                        <div class="movie-detail-content col-12">

                            <p class="detail-subtitle">
                                <?php the_title() ?>
                            </p>
                            <div class="meta-wrapper">

                                <div class="badge-wrapper">
                                    <?php $hd_movie = get_post_meta(get_the_ID(), 'hd_moive', true); ?>
                                    <div class="badge badge-outline">
                                        <?= $hd_movie ?>
                                    </div>
                                </div>
                                <div class="date-time">
                                    <div>
                                        <ion-icon name="time-outline"></ion-icon>
                                        <?php $time_movie = get_post_meta(get_the_ID(), 'time_movie', true); ?>
                                        <time datetime="PT115M">
                                            <?= $time_movie ?>
                                        </time>
                                    </div>
                                </div>
                                <?php
                    $current_post_id = get_the_ID();
                    $post_tags = wp_get_post_tags($current_post_id);
                    if ($post_tags) {
                      $tag_ids = array();
                      foreach ($post_tags as $tag) {
                        $tag_ids[] = $tag->term_id;
                      }
                      $related_posts_query = new WP_Query(
                        array(
                          'tag__in' => $tag_ids,
                          'post__not_in' => array($current_post_id),
                          'posts_per_page' => -1,
                          'orderby' => 'date',
                          'order' => 'ASC'
                        )
                      );
                      if ($related_posts_query->have_posts()) {
                        ?>
                                <div class="ganre-wrapper">
                                    <?php
                          $i = 1;
                          while ($related_posts_query->have_posts()) {
                            $related_posts_query->the_post();
                            ?>
                                    <a href="<?php echo get_permalink() ?>">Tập <?= $i ?></a>
                                    <?php
                            $i++;
                          }
                          ?>
                                </div>
                                <?php
                        wp_reset_postdata();
                      }
                    }
                    ?>
                            </div>
                            <div class="story-content">
                                <div class="storyline">
                                    <?php the_content(); ?>
                                </div>
                                <button id="single-button"><span>Xem thêm</span><img
                                        src="<?php echo get_template_directory_uri() ?>/images/chevron-double-down.svg"
                                        alt=""></button>
                            </div>
                        </div>
                    </div>
                </section>
            </article>
            <article class="sidebar-home col-md-4">
                <div class="flex-wrapper">
                    <div class="title-wrapper">
                        <h2 class="h2 section-title">Phim nổi bật</h2>
                    </div>
                </div>
                <div class="main-sidebar bg-movie p-3">
                    <?php if (have_rows('movie_future', 'option')): ?>
                    <?php while (have_rows('movie_future', 'option')):
                the_row();
                $post_movie = get_sub_field('chosee_post');
               
                $post_date_gmt = get_the_date('d/m/Y', $post_movie);
                $post_movie_title = get_the_title($post_movie);
                $post_movie_link = get_permalink($post_movie);
                $additional_text = get_post_meta($post_movie->ID, 'hd_moive', true);
                $additional_time = get_post_meta($post_movie->ID, 'time_movie', true);
                ?>
                    <a href="<?= $post_movie_link ?>">
                        <div class="row item-sidebar">
                            <div class="col-2 image">
                                <img src="<?php echo get_the_post_thumbnail_url($post_movie); ?>"
                                    class="img-fluid post-image" alt="Ảnh bài viết">
                            </div>
                            <div class="col-10 content">
                                <h2 class="title"><?php echo $post_movie_title ?></h2>
                                <p class="date">Cập nhật: <?= $post_date_gmt ?></p>
                                <div class="meta-wrapper">
                                    <div class="badge-wrapper">
                                        <div class="badge badge-outline"><?= $additional_text ?></div>
                                    </div>
                                    <div class="date-time">
                                        <div>
                                            <time datetime="PT115M"><?= $additional_time ?></time>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </a>
                    <?php endwhile; ?>
                    <?php endif; ?>
                </div>
            </article>
        </main>
        <section class="tv-series">
            <h2 class="h2 section-title">Liên quan</h2>
            <ul class="movies-list-home bg-movie">
                <?php
              $current_post_id = get_the_ID();
              $current_post_category = get_the_category($current_post_id);
              $current_post_category_id = $current_post_category[0]->term_id;

              $related_posts_query = new WP_Query(
                array(
                  'posts_per_page' => 5,
                  'cat' => $current_post_category_id,
                  'post__not_in' => array($current_post_id),
                )
              );

              if ($related_posts_query->have_posts()):
                while ($related_posts_query->have_posts()):
                  $related_posts_query->the_post();
                  $thumbnail = get_the_post_thumbnail_url(get_the_ID(), 'medium');
                  $title = get_the_title();
                  $custom_field_value1 = get_post_meta(get_the_ID(), 'hd_moive', true);
                  $custom_field_value2 = get_post_meta(get_the_ID(), 'time_movie', true);
                  ?>
                <li>
                    <div class="movie-card">

                        <a href="<?php the_permalink() ?>">
                            <figure class="card-banner">
                                <img src="<?php echo esc_url($thumbnail); ?>" alt="Moon Knight movie poster">
                            </figure>
                        </a>

                        <div class="title-wrapper">
                            <a href="<?php the_permalink() ?>">
                                <h3 class="card-title"><?= $title ?></h3>
                            </a>
                        </div>

                        <div class="card-meta">
                            <div class="badge badge-outline"><?= $custom_field_value1 ?></div>

                            <div class="duration">
                                <time datetime="PT47M"><?= $custom_field_value2 ?></time>
                            </div>
                        </div>

                    </div>
                </li>
                <?php
                endwhile;
                wp_reset_postdata();
              endif;
              ?>
            </ul>

        </section>

    </div>
</div>
<?php endwhile; endif; ?>
<?php
get_footer();