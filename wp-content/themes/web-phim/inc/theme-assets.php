<?php
/*
 *  ENQUEUE SCRIPTS
 */

function theme_enqueue_script() 
{
    // Initialize variables
    $script_handle = 'wp-script';

    // Register project js files
    $js_files = glob(THEME_DIR.'/js/*.js');
    foreach ( $js_files as $file ) {
        $handle = $script_handle. '-' .basename($file, '.js');
        wp_register_script($handle, THEME_URL.'/js/'.basename($file), array('jquery'), false, true);
        wp_enqueue_script($handle);

         // Add async or defer attribute to scripts
         add_filter('script_loader_tag', function($tag, $handle_to_match) use ($handle) {
            if ($handle !== $handle_to_match) {
                return $tag;
            }
            return str_replace(' src', ' defer="defer" src', $tag);
        }, 10, 2);
    }
}

add_action('wp_enqueue_scripts', 'theme_enqueue_script');

/*
 *  ENQUEUE STYLES
 */

function theme_enqueue_styles()
{
    // Initialize variables
    $script_handle = 'wp-style';

    // Register main styles and other if defined
    $css_files = glob(THEME_DIR.'/css/*.css');
    foreach ($css_files as $file) {
        $handle = $script_handle. '-' .basename($file, '.css');
        wp_register_style($handle, THEME_URL.'/css/'.basename($file), array(), false, false);
        wp_enqueue_style($handle);

          // Add preload attribute to important CSS files
          add_filter('style_loader_tag', function($html, $handle_to_match, $href, $media) use ($handle) {
            if ($handle !== $handle_to_match) {
                return $html;
            }
            return '<link rel="preload" href="' . esc_url($href) . '" as="style" onload="this.onload=null;this.rel=\'stylesheet\'">' . "\n" . '<noscript><link rel="stylesheet" href="' . esc_url($href) . '"></noscript>' . "\n";
        }, 10, 4);
    }
}

add_action('wp_enqueue_scripts', 'theme_enqueue_styles');

//Tối ưu hình ảnh
// Cho phép tải lên WebP
function add_webp_upload_mimes($mimes) {
    $mimes['webp'] = 'image/webp';
    return $mimes;
}
add_filter('mime_types', 'add_webp_upload_mimes');

// Kích hoạt Lazy Loading cho hình ảnh
add_filter('wp_lazy_loading_enabled', '__return_true');

// Cho phép tải lên SVG
function add_svg_support($mimes) {
    $mimes['svg'] = 'image/svg+xml';
    return $mimes;
}
add_filter('upload_mimes', 'add_svg_support');

function add_lazy_loading_to_iframes() {
    ?>
<script>
document.addEventListener("DOMContentLoaded", function() {
    var iframes = document.querySelectorAll("iframe");
    iframes.forEach(function(iframe) {
        iframe.setAttribute("loading", "lazy");
    });
});
</script>
<?php
}
add_action('wp_footer', 'add_lazy_loading_to_iframes');