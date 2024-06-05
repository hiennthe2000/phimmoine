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
                            <a href="./movie-details.html">
                                <figure class="card-banner">
                                    <?php
                                    // Lấy URL của ảnh đại diện
                                    $thumbnail_url = get_the_post_thumbnail_url(get_the_ID(), 'full');

                                    // Hiển thị ảnh đại diện (nếu có) và tiêu đề bài viết trong một liên kết
                                    echo '<a href="' . esc_url(get_permalink()) . '">';
                                    if ($thumbnail_url) {
                                        echo '<img src="' . esc_url($thumbnail_url) . '" alt="' . get_the_title() . '" />';
                                    }
                                    echo '</a>';
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
                                    <time datetime="PT137M"><?= $time_movie ?> phút</time>
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
</section>


<?php
get_footer()
    ?>