<?php
                $args = array(
                    'post_type' => 'post',
                    'posts_per_page' => 40,
                );

                $query = new WP_Query($args);
                if ($query->have_posts()):
                ?>
<div class="flex-wrapper">
    <div class="title-wrapper">
        <h2 class="h2 section-title">PHIM MỚI CẬP NHẬT</h2>
        <a href="https://phimmoine.online/phim-moi-nhat/">Xem tất cả</a>
    </div>
</div>
<ul class="has-scrollbar movies-list-new row">
    <?php
                        while ($query->have_posts()):
                            $query->the_post();
                            ?>
    <li class="col-md-3 col-sm-4 col-6 mt-4">
        <div class="movie-card">
            <?php
            $link_movie_repeater = get_field('link_movie_single');

            if ($link_movie_repeater) {
                $total_items = count($link_movie_repeater);
                if($total_items > 1){
                ?>
            <div class="item-movie">
                Tập <?php echo $total_items .' / '. $total_items ?>
            </div>
            <?php
                  }                         
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
                    ?>
</ul>
<?php endif; ?>