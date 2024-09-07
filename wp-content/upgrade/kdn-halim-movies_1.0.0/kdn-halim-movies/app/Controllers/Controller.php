<?php
namespace KDN_HalimMovies\Controllers;

/**
 * Controller.
 *
 * @since   1.0.0
 */
class Controller {
	
	/**
	 * Construct function.
	 */
	public function __construct() {

		// Admin enqueue scripts.
		add_action('admin_enqueue_scripts', [$this, 'KDN_HalimMovies_AdminEnqueueScripts']);

        // Set the folder including translation files, and handle translations.
        add_action('plugins_loaded', function() {

            load_plugin_textdomain('kdn-halim-movies', false, 'kdn-halim-movies/app/lang/');

        });

        // Controllers.
        new \KDN_HalimMovies\Controllers\Pages\General_Settings;

        // Models.
        new \KDN_HalimMovies\Models\Model;

	}





	/**
	 * Admin enqueue scripts.
	 *
	 * @since 	2.3.3
	 */
	public function KDN_HalimMovies_AdminEnqueueScripts() {

		// Get current screen.
		$screen = get_current_screen();

		// Enqueue JS and CSS.
		if (in_array($screen->id, ['plugins_page_kdn-halim-movies'])) {

			// Enqueue CSS.
			wp_enqueue_style('kdn-halim-movies-bootstrap-css',	KDN_HALIM_URL . 'app/public/css/bootstrap.min.css', null, KDN_HALIM_VERSION);
			wp_enqueue_style('kdn-halim-movies-jquery-ui',     	KDN_HALIM_URL . 'app/public/css/jquery-ui.css',   	null, KDN_HALIM_VERSION);
			wp_enqueue_style('kdn-halim-movies', 				KDN_HALIM_URL . 'app/public/css/backend.css', 		null, KDN_HALIM_VERSION);

			// Enqueue JS.
			wp_enqueue_script('kdn-halim-movies-popper-js',		KDN_HALIM_URL . 'app/public/js/popper.min.js', 		null, KDN_HALIM_VERSION);
			wp_enqueue_script('kdn-halim-movies-bootstrap-js',	KDN_HALIM_URL . 'app/public/js/bootstrap.min.js', 	null, KDN_HALIM_VERSION);
			wp_enqueue_script('kdn-halim-movies',				KDN_HALIM_URL . 'app/public/js/backend.js',			null, KDN_HALIM_VERSION, true);
			wp_localize_script('kdn-halim-movies', 'KDN_HalimMovies',
				array(
					'kdn_halim_url'		=> KDN_HALIM_URL,
					'ajax_url'			=> admin_url('admin-ajax.php'),
					'wp_nonce'			=> wp_create_nonce('kdn-halim-movies'),
					'current_url'		=> get_the_permalink(),
					'array'				=> _halim('Array'),
					'string'			=> _halim('String')
				)
			);

		}

	}

}