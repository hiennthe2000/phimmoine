<?php
/**
 * template name: Lỗi 404
 */

get_header();
get_template_part('sections/menu-main'); 
?>
<section id="error">
    <div class="container">
        <div class="error_title">
            <img src="<?php echo get_template_directory_uri() . '/images/code.png' ?>">
            <p>Xin lỗi! Trang bạn tìm kiếm không tồn tại</p>
        </div>
        <div class="error_bottom">
            <a href="<?php echo get_home_url() ?>">QUAY LẠI TRANG CHỦ</a>
        </div>
    </div>
</section>
<?php get_footer() ?>