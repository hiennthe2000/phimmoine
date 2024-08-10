<?php
                        $movie_item_view = get_field('movie_item_view');
                        if($movie_item_view){
?>
<article class="sidebar-home bg-movie">
    <div class="flex-wrapper">
        <div class="title-wrapper">
            <h2 class="h2 section-title">Phim xem nhiều</h2>
        </div>
    </div>
    <div class="main-sidebar">
        <?php if (have_rows('movie_item_view')): ?>
        <?php while (have_rows('movie_item_view')):
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
                        alt="Xem phim mới nhất">
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
<?php
                        }
                        ?>