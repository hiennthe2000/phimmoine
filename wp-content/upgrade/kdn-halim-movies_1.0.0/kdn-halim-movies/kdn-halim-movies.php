<?php
/*
Plugin Name: KDN Halim Movies
Description: <strong>Simplify saving information to each movie for the Halim Movies theme - <code>https://halimthemes.com</code></strong>
Plugin URI: https://kdnautoleech.com
Version: 1.0.0
Author: KDN Auto Leech
Author URI: https://kdnautoleech.com
Text Domain: kdn-halim-movies
Domain Path: app/lang
*/





// Exit if accessed directly.
if (!defined('ABSPATH')) {
    exit;
}

/**
 * Require some file.
 */

if (!function_exists('get_plugin_data')) {
	require_once(ABSPATH . 'wp-admin/includes/plugin.php');
}

if (!function_exists('wp_get_current_user')) {
    require_once(ABSPATH . 'wp-includes/pluggable.php');
}

/**
 * Defined some constants.
 */

if(!defined('KDN_HALIM_PATH')) {

    /**
     * The plugin constants with a trailing slash.
     */
    define('KDN_HALIM_PATH', str_replace("/", DIRECTORY_SEPARATOR, trailingslashit(plugin_dir_path(__FILE__))));
    define('KDN_HALIM_MAINFILE', __FILE__);
    define('KDN_HALIM_URL', trailingslashit(plugin_dir_url(__FILE__)));
    define('KDN_HALIM_VERSION', get_plugin_data(__FILE__)['Version']);

}

// Require autoload.
require 'app/vendor/autoload.php';

// Call to controller.
new \KDN_HalimMovies\Controllers\Controller;