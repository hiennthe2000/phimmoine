<footer class="footer">
    <div class="footer-top">
        <div class="container">
            <div class="footer-brand-wrapper">
                <div class="box-footer">
                    <a href="<?= home_url(); ?>" class="logo">
                        <?php $logo_web = get_field('logo_web', 'option'); ?>
                        <img class="logo-main" src="<?= $logo_web['url'] ?>" alt="Xem phim free">
                        <p class="hero-subtitle"><?php the_field('name_website', 'option') ?></p>
                    </a>
                    <span>
                        Phimmoine là trang web lý tưởng cho những người yêu phim mới hay. Chúng tôi mang đến cho bạn
                        trải nghiệm xem phim online tuyệt vời với hàng ngàn bộ phim đa dạng thể loại, những bộ phim kinh
                        điển đến những bộ phim mới nhất và phim hay nhất trên nền tảng.
                    </span>
                </div>
                <ul class="footer-list">
                    <?php
                    $categories = get_categories(
                        array(
                            'orderby' => 'name',
                            'order' => 'ASC',
                            'number' => 5
                        )
                    );
                    if (!empty($categories)) {

                        foreach ($categories as $category) {
                            ?>
                    <li>
                        <a href="<?= get_category_link($category->term_id) ?>"
                            class="footer-link"><?= $category->name ?></a>
                    </li>
                    <?php
                        }
                    } else {
                        ?>
                    <li>
                        <a href="#" class="footer-link">Không có chuyên mục nào !</a>
                    </li>
                    <?php
                        // Nếu không có chuyên mục nào
                        echo 'Không có chuyên mục nào.';
                    }
                    ?>

                </ul>

            </div>

            <div class="divider"></div>

            <div class="quicklink-wrapper">

                <ul class="quicklink-list">

                    <?php
                    $tags = get_tags(
                        array(
                            'orderby' => 'count',
                            'order' => 'DESC',
                            'number' => 5
                        )
                    );
                    if (!empty($tags)) {
                        foreach ($tags as $tag) {
                            ?>
                    <li>
                        <a href="<?= get_tag_link($tag->term_id) ?>" class="quicklink-link"><?= $tag->name ?></a>
                    </li>
                    <?php
                        }
                    } else {
                        echo 'Không có tag nào.';
                    }
                    ?>
                </ul>

                <ul class="social-list">

                    <li>
                        <a href="#" class="social-link">
                            <i class='bx bxl-facebook'></i>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="social-link">
                            <i class='bx bxl-youtube'></i>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="social-link">
                            <i class='bx bxl-twitter'></i>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="social-link">
                            <i class='bx bxl-instagram'></i>
                        </a>
                    </li>

                </ul>

            </div>

        </div>
    </div>

    <div class="footer-bottom">
        <div class="container">
            <p class="copyright" style="margin:auto;">
                &copy; 2023 <a href="#">hiennthe</a>. Website movie
            </p>
        </div>
    </div>
</footer>

<a href="#top" class="go-top" data-go-top>
    <ion-icon name="chevron-up"></ion-icon>
</a>
<?php wp_footer() ?>
</body>

</html>