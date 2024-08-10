<?php
get_header();
get_template_part('sections/menu-main');

?>
<section class="upcoming">
    <div class="container">
        <div class="flex-wrapper">
            <div class="title-wrapper">
                <?php
                $search_query = get_search_query();
                if ($search_query):
                    ?>
                    <h2 class="h2 section-title mt-5"><?= esc_html($search_query) ?></h2>
                    <?php
                endif;
                ?>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-8">
            <ul class="movies-list  has-scrollbar">

<?php
$s = get_search_query();
$args = array(
    's' => $s
);
$query = new WP_Query($args);

if ($query->have_posts()):
    while ($query->have_posts()):
        $query->the_post();

        ?>
        <li>
            <div class="movie-card">
            <?php $episode = get_post_meta(get_the_ID(), 'episode', true); ?>
                                <?php if($episode){
                                    ?>
                                    <div class="item-movie">
                                       <?= $episode ?>
                                    </div>
                                    <?php
                                }
                                ?>
                <a href="<?php the_permalink() ?>">
                    <figure class="card-banner">
                        <?php
                        $thumbnail_url = get_the_post_thumbnail_url(get_the_ID(), 'full');
                       
                        if ($thumbnail_url) {
                            echo '<img src="' . esc_url($thumbnail_url) . '" alt="' . get_the_title() . '" />';
                        }
                      
                        ?>
                    </figure>
                </a>

                <div class="title-wrapper">
                    <a href="<?php the_permalink() ?>">
                        <h3 class="card-title">
                            <?php the_title() ?>
                        </h3>
                    </a>
                </div>

                <div class="card-meta">
                    <?php $hd_movie = get_post_meta(get_the_ID(), 'hd_moive', true); ?>
                    <div class="badge badge-outline"><?= $hd_movie ?></div>

                    <div class="duration">
                        <ion-icon name="time-outline"></ion-icon>
                        <?php $time_movie = get_post_meta(get_the_ID(), 'time_movie', true); ?>
                        <time datetime="PT137M"><?= $time_movie ?></time>
                    </div>
                </div>

            </div>
        </li>
        <?php
    endwhile;
    wp_reset_postdata();
else:
    ?>
    <p class="search-info">Không tìm thấy kết quả.</p>
    <?php
endif;
?>
</ul>
            </div>
            <div class="col-lg-4">
                <article class="sidebar-home bg-movie">
                <div class="flex-wrapper">
                    <div class="title-wrapper">
                        <h2 class="h2 section-title">Phim hay nhất</h2>
                    </div>
                </div>
                <div class="main-sidebar">
            <?php if (have_rows('movie_item_hot', 2)): ?>
              <?php while (have_rows('movie_item_hot', 2)):
                the_row();
                $post_movie = get_sub_field('item_hot');
               
                $post_date_gmt = get_the_date('d/m/Y', $post_movie);
                $post_movie_title = get_the_title($post_movie);
                $post_movie_link = get_permalink($post_movie);
                $additional_text = get_post_meta($post_movie->ID, 'hd_moive', true);
                $additional_time = get_post_meta($post_movie->ID, 'time_movie', true);
                ?>
                <a href="<?= $post_movie_link ?>">
                  <div class="row item-sidebar">
                    <div class="col-2 image">
                      <img src="<?php echo get_the_post_thumbnail_url($post_movie); ?>" class="img-fluid post-image"
                        alt="Ảnh bài viết">
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
                <article class="sidebar-home bg-movie mt-4">
                <div class="flex-wrapper">
                    <div class="title-wrapper">
                        <h2 class="h2 section-title">Phim xem nhiều</h2>
                    </div>
                </div>
                <div class="main-sidebar">
            <?php if (have_rows('movie_item_view', 2)): ?>
              <?php while (have_rows('movie_item_view', 2)):
                the_row();
                $post_movie = get_sub_field('item_view');
               
                $post_date_gmt = get_the_date('d/m/Y', $post_movie);
                $post_movie_title = get_the_title($post_movie);
                $post_movie_link = get_permalink($post_movie);
                $additional_text = get_post_meta($post_movie->ID, 'hd_moive', true);
                $additional_time = get_post_meta($post_movie->ID, 'time_movie', true);
                ?>
                <a href="<?= $post_movie_link ?>">
                  <div class="row item-sidebar">
                    <div class="col-2 image">
                      <img src="<?php echo get_the_post_thumbnail_url($post_movie); ?>" class="img-fluid post-image"
                        alt="Ảnh bài viết">
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
                </div>
        </div>
    </div>
</section>


<?php
get_footer()
    ?>