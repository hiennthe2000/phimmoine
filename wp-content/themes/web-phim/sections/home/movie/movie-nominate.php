<?php
                $movie_item_future = get_field('movie_item_future');
                if($movie_item_future){
                    ?>
<div class="flex-wrapper">
    <div class="title-wrapper">
        <h2 class="h2 section-title">PHIM ĐỀ CỬ</h2>
    </div>
</div>
<div class="bg-movie">
    <ul class="has-scrollbar movies-list-home">
        <?php if (have_rows('movie_item_future')): ?>
        <?php while (have_rows('movie_item_future')):
                            the_row();
                            $post_movie = get_sub_field('item_future');
                            $post_movie_title = get_the_title($post_movie);
                            $post_movie_link = get_permalink($post_movie);
                            $additional_text = get_post_meta($post_movie->ID, 'hd_moive', true);
                            $additional_time = get_post_meta($post_movie->ID, 'time_movie', true);
                            $episode = get_post_meta($post_movie->ID, 'episode', true);
                           ?>

        <li>
            <div class="movie-card">
                <?php if($episode){
                                ?>
                <div class="item-movie">
                    <?= $episode ?>
                </div>
                <?php
                                }
                                 ?>
                <a href="<?php echo $post_movie_link ?>">
                    <figure class="card-banner">
                        <img src="<?php echo get_the_post_thumbnail_url($post_movie); ?>" alt="Phim mới online">
                    </figure>
                </a>

                <div class="title-wrapper">
                    <a href="<?php echo $post_movie_link ?>">
                        <h3 class="card-title">
                            <?php echo $post_movie_title ?>
                        </h3>
                    </a>
                </div>

                <div class="card-meta">
                    <?php $hd_movie = get_post_meta(get_the_ID(), 'hd_moive', true); ?>
                    <div class="badge badge-outline"><?= $additional_text ?></div>

                    <div class="duration">
                        <ion-icon name="time-outline"></ion-icon>
                        <?php $time_movie = get_post_meta(get_the_ID(), 'time_movie', true); ?>
                        <time datetime="PT137M"><?= $additional_time ?></time>
                    </div>
                </div>

            </div>
        </li>
        <?php
                        endwhile;
                    endif;
                    ?>
    </ul>
</div>
<?php } ?>