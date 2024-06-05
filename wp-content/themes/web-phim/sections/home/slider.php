<main>
    <article>
        <section class="slide-banner">
            <?php
            if (have_rows('slide_banner')):
                while (have_rows('slide_banner')):
                    the_row();
                    $image = get_sub_field('image');
                    $post_movie_id = get_sub_field('post_movie');
                    $post_movie_title = get_the_title($post_movie_id);
                    $post_movie_link = get_permalink($post_movie_id);
                    $additional_text = get_post_meta($post_movie_id->ID, 'hd_moive', true);
                    $additional_time = get_post_meta($post_movie_id->ID, 'time_movie', true);
                    ?>
                    <div class="hero" style="background-image: url('<?php echo $image['url'] ?>');">
                        <div class="container">
                            <div class="hero-content">
                                <h3 class="h1 hero-title">
                                    <?= $post_movie_id->post_title ?>
                                </h3>
                                <div class="meta-wrapper">
                                    <div class="badge-wrapper">
                                        <div class="badge badge-outline"><?= $additional_text ?></div>
                                    </div>
                                    <div class="date-time">
                                        <div>
                                            <time datetime="PT128M"><?= $additional_time ?></time>
                                        </div>
                                    </div>
                                </div>
                                <a href="<?= $post_movie_link ?>">
                                    <button class="btn btn-primary">
                                        <span>Xem phim</span>
                                    </button>
                                </a>
                            </div>
                        </div>
                    </div>
                    <?php
                endwhile;
            endif;
            ?>
        </section>

        <section class="upcoming">
            <div class="container">
                <div class="flex-wrapper">
                    <div class="title-wrapper">
                        <h2 class="h2 section-title">Phim mới cập nhật</h2>
                    </div>
                </div>
                <ul class="has-scrollbar movies-list-home">
                    <?php
                    $args = array(
                        'post_type' => 'post',
                        'posts_per_page' => -1,
                    );

                    $query = new WP_Query($args);

                    if ($query->have_posts()):
                        while ($query->have_posts()):
                            $query->the_post();

                            ?>
                            <li>
                                <div class="movie-card">
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
                        wp_reset_postdata(); // Đặt lại truy vấn
                    else:
                        // Nếu không có bài viết nào
                        echo 'Không có bài viết nào.';
                    endif;
                    ?>
                </ul>
                <div class="flex-wrapper">
                    <div class="title-wrapper">
                        <h2 class="h2 section-title">Phim nổi bật</h2>
                    </div>
                </div>
                <ul class="has-scrollbar movies-list-home">
                    <?php if (have_rows('movie_item_future')): ?>
                        <?php while (have_rows('movie_item_future')):
                            the_row();
                            $post_movie = get_sub_field('item_future');
                            $post_movie_title = get_the_title($post_movie);
                            $post_movie_link = get_permalink($post_movie);
                            $additional_text = get_post_meta($post_movie->ID, 'hd_moive', true);
                            $additional_time = get_post_meta($post_movie->ID, 'time_movie', true);
                            ?>
                            <li>
                                <div class="movie-card">
                                    <a href="<?php echo $post_movie_link ?>">
                                        <figure class="card-banner">
                                            <img src="<?php echo get_the_post_thumbnail_url($post_movie); ?>"
                                                alt="Ảnh bài viết">
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
                    else:
                        echo 'Không có bài viết nào.';
                    endif;
                    ?>
                </ul>
                <div class="flex-wrapper">
                    <div class="title-wrapper">
                        <h2 class="h2 section-title">Phim mới hay nhất</h2>
                    </div>
                </div>
                <ul class="has-scrollbar movies-list-home">
                    <?php if (have_rows('movie_item_hot')): ?>
                        <?php while (have_rows('movie_item_hot')):
                            the_row();
                            $post_movie = get_sub_field('item_hot');
                            $post_movie_title = get_the_title($post_movie);
                            $post_movie_link = get_permalink($post_movie);
                            $additional_text = get_post_meta($post_movie->ID, 'hd_moive', true);
                            $additional_time = get_post_meta($post_movie->ID, 'time_movie', true);
                            ?>
                            <li>
                                <div class="movie-card">
                                    <a href="<?php echo $post_movie_link ?>">
                                        <figure class="card-banner">
                                            <img src="<?php echo get_the_post_thumbnail_url($post_movie); ?>"
                                                alt="Ảnh bài viết">
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
                    else:
                        echo 'Không có bài viết nào.';
                    endif;
                    ?>
                </ul>
                <div class="flex-wrapper">
                    <div class="title-wrapper">
                        <h2 class="h2 section-title">Phim xem nhiều</h2>
                    </div>
                </div>
                <ul class="has-scrollbar movies-list-home">
                    <?php if (have_rows('movie_item_view')): ?>
                        <?php while (have_rows('movie_item_view')):
                            the_row();
                            $post_movie = get_sub_field('item_view');
                            $post_movie_title = get_the_title($post_movie);
                            $post_movie_link = get_permalink($post_movie);
                            $additional_text = get_post_meta($post_movie->ID, 'hd_moive', true);
                            $additional_time = get_post_meta($post_movie->ID, 'time_movie', true);
                            ?>
                            <li>
                                <div class="movie-card">
                                    <a href="<?php echo $post_movie_link ?>">
                                        <figure class="card-banner">
                                            <img src="<?php echo get_the_post_thumbnail_url($post_movie); ?>"
                                                alt="Ảnh bài viết">
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
                    else:
                        echo 'Không có bài viết nào.';
                    endif;
                    ?>
                </ul>
            </div>
        </section>
        <section class="content-page">
            <div class="container">
            <?php the_content() ?>
            </div>
            <button id="toggle-button"><span>Xem thêm</span><img src="<?php echo get_template_directory_uri() ?>/images/chevron-double-down.svg" alt=""></button>
        </section>
    </article>
</main>