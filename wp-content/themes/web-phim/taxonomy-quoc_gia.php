<?php
get_header();
get_template_part('sections/menu-main');


$id = get_queried_object_id();
$paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
$list = new WP_Query([
    'post_type' => 'post',
    'posts_per_page' => 20,
    'paged' => $paged,
    'tax_query' => array(
        'relation' => 'AND',
        array(
            'taxonomy' => 'quoc_gia',
            'field' => 'id',
            'terms' => $id,
        )),
]);
 ?>
<section class="upcoming">
    <div class="container">
        <div class="flex-wrapper">
            <div class="title-wrapper">
                <h2 class="h2 section-title mt-5"><?php single_cat_title(); ?></h2>
            </div>
        </div>
        <ul class="movies-list  has-scrollbar">
            <?php
            if (have_posts()):
                ?>
                <?php
                while ($list->have_posts()) : $list->the_post();
                    ?>
                    <li>
                        <div class="movie-card">
                            <a href="./movie-details.html">
                                <figure class="card-banner">
                                    <?php
                                    $thumbnail_url = get_the_post_thumbnail_url(get_the_ID(), 'full');
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
                                    <time datetime="PT137M"><?= $time_movie ?></time>
                                </div>
                            </div>
                        </div>
                    </li>
                <?php endwhile; ?>
              
                <?php
            else:
                ?>
                <p>Không có bài viết nào trong chuyên mục này.</p>
                <?php
            endif;
            ?>
        </ul>
        <?php devvn_wp_corenavi($list, $paged); ?>
    </div>
</section>
<?php

get_footer();
