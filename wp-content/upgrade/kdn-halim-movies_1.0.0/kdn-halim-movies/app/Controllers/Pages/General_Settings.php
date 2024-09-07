<?php
namespace KDN_HalimMovies\Controllers\Pages;

/**
 * General settings.
 *
 * @since 	1.0.0
 */
class General_Settings {

	/** @var 	array 	Storage all options. */
	private $halimOptions;





	/**
	 * Construct function.
	 */
	function __construct() {

		// Get all options.
		$this->halimOptions = get_option('kdn_halim_options');

		// Create menu.
		add_action('admin_menu', [$this, 'KDN_HalimMovies_Menu']);

		// Create options.
		add_action('admin_init', [$this, 'KDN_HalimMovies_Options']);

	}





	/**
	 * Create menu callback.
	 *
	 * @since 	1.0.0
	 */
	public function KDN_HalimMovies_Menu() {

		// Create sub menu page.
	    add_submenu_page(
	    	'plugins.php',
	        'KDN Halim Movies',												// Title
	        'KDN Halim Movies',												// Menu
	        'manage_options',												// Capability
	        'kdn-halim-movies',												// Page
	        [$this, 'KDN_HalimMovies_MenuContent']							// Callback
	    );
	 
	}





	/**
	 * Default options.
	 *
	 * @since 	1.0.0
	 */
	private function defaultOptions() {

		$defaultOptions = [
			'sites' => [],
			[
				'type' 	=> 'array',
				'key'	=> '_halim_metabox_options',
				'value'	=> [
					[
						'item_key' 		=> 'fetch_info_url',
						'item_value' 	=> ''
					],
					[
						'item_key' 		=> 'halim_poster_url',
						'item_value' 	=> ''
					],
					[
						'item_key' 		=> 'halim_thumb_url',
						'item_value' 	=> ''
					],
					[
						'item_key' 		=> 'halim_original_title',
						'item_value' 	=> ''
					],
					[
						'item_key' 		=> 'halim_trailer_url',
						'item_value' 	=> ''
					],
					[
						'item_key' 		=> 'halim_runtime',
						'item_value' 	=> ''
					],
					[
						'item_key' 		=> 'halim_rating',
						'item_value' 	=> ''
					],
					[
						'item_key' 		=> 'halim_votes',
						'item_value' 	=> ''
					],
					[
						'item_key' 		=> 'halim_episode',
						'item_value' 	=> ''
					],
					[
						'item_key' 		=> 'halim_quality',
						'item_value' 	=> ''
					],
					[
						'item_key' 		=> 'halim_movie_formality',
						'item_value' 	=> ''
					],
					[
						'item_key' 		=> 'halim_movie_status',
						'item_value' 	=> ''
					],
					[
						'item_key' 		=> 'halim_movie_notice',
						'item_value' 	=> ''
					],
					[
						'item_key' 		=> 'halim_showtime_movies',
						'item_value' 	=> ''
					],
					[
						'item_key' 		=> 'save_poster_image',
						'item_value' 	=> ''
					],
					[
						'item_key' 		=> 'set_reatured_image',
						'item_value' 	=> ''
					],
					[
						'item_key' 		=> 'save_all_img',
						'item_value' 	=> ''
					],
					[
						'item_key' 		=> 'halim_add_to_widget',
						'item_value' 	=> ''
					]
				]
			]
		];

		return $defaultOptions;

	}





	/**
	 * Create options callback.
	 *
	 * @since 	1.0.0
	 */
	public function KDN_HalimMovies_Options() {
	 
		// If the options don't exist, create them
		if(false == get_option('kdn_halim_options')) {
		    add_option('kdn_halim_options', $this->defaultOptions());
		}

		/**
		 * Add sections and fields.
		 */

		// Register a section.
		add_settings_section(
		    'kdn_halim_options',         									// ID
		    null,                  											// Title
		    [$this, 'KDN_HalimMovies_OptionsCallback'], 					// Callback
		    'kdn_halim_options_screen'     									// Screen
		);
	    
	    // Add a field.
	    add_settings_field(
	        'kdn_halim_metabox_options',									// ID
	        _halim('Post meta settings:') . _halim_desc(),					// Label
	        [$this, 'KDN_HalimMovies_MetaboxOptionsCallback'],   			// Callback
	        'kdn_halim_options_screen',										// Screen
	        'kdn_halim_options',         									// Section
	        ['']															// Arguments
	    );

		/**
		 * Register option.
		 */

		// Register option "kdn_halim_options".
		register_setting(
			'kdn_halim_options_screen',										// Screen
			'kdn_halim_options',											// Option
			null
		);
	     
	}





	/**
	 * Section callback.
	 *
	 * @since 	1.0.0
	 */
	public function KDN_HalimMovies_OptionsCallback() {}





	/**
	 * Field callback.
	 *
	 * @since 	1.0.0
	 */
	public function KDN_HalimMovies_MetaboxOptionsCallback() {

		// Initialize HTML.
		$html = '';

		// Site allowed.
		$html .= '	<div>
						<div style="margin-bottom: 5px"><i>' . _halim('Sites allowed:') . '</i></div>
						<select name="kdn_halim_options[sites][]" multiple="multiple" style="height: 185px">';

			$args = [
				'post_type' 		=> 'kdn_sites',
				'posts_per_page'	=> -1,
			];

			$sites = get_posts($args);

			foreach ($sites as $site) {
				$html .= '	<option value="' . $site->ID . '" '. (isset($this->halimOptions['sites']) && in_array($site->ID, $this->halimOptions['sites']) ? 'selected' : '') .'>' . $site->post_title . '</option>';
			}

		$html .= '		</select>
					</div><br/>';

		// If do not have any option, stop here.
		if (!$this->halimOptions) return;

		unset($this->halimOptions['sites']);

		// Create each option.
		foreach ($this->halimOptions as $key => $postMeta) {

			// If this is an option with "array" type.
			if (is_array($postMeta['value'])) {

				$html .= '	<div class="item-row" data-id="' . $key . '">
								<button type="button" class="button delete-option"><span class="dashicons dashicons-trash"></span></button>
								<textarea id="kdn_halim_options-' . $key . '" style="display:none"></textarea>
								<input
									type="radio"
									class="kdn_halim_options_type kdn-tooltips"
									name="kdn_halim_options[' . $key . '][type]"
									value="string"
									' . ($postMeta['type'] == 'string' ? 'checked' : '') . '
									title="' . _halim('String') . '"
								/><input
									type="radio"
									class="kdn_halim_options_type kdn-tooltips"
									name="kdn_halim_options[' . $key . '][type]"
									value="array"
									' . ($postMeta['type'] == 'array' ? 'checked' : '') . '
									title="' . _halim('Array') . '"
								/><input
									type="text"
									name="kdn_halim_options[' . $key . '][key]"
									placeholder="Post meta key"
									value="' . $postMeta['key'] . '"
								/>
								<div class="option-value">
									<button type="button" class="button add-new-item">+</button>
									<font size="4">↴</font>';

									// Create each item.
									foreach ($postMeta['value'] as $k => $item) {

										$html.= '	<div class="child-item" data-id="' . $k . '">
														<input
															type="text"
															name="kdn_halim_options[' . $key . '][value][' . $k . '][item_key]"
															placeholder="Item key"
															value="' . $item['item_key'] . '"
														/>
														<input
															type="text"
															name="kdn_halim_options[' . $key . '][value][' . $k . '][item_value]"
															placeholder="Target post meta key"
															value="' . $item['item_value'] . '"
														/>
														<a class="delete-item">x</a>
													</div>
												';

									}

					$html.=	'	</div>
							</div>
						';

			// Otherwise, this is an option with "string" type.
			} else {

				$html .= '	<div class="item-row" data-id="' . $key . '">
								<button type="button" class="button delete-option"><span class="dashicons dashicons-trash"></span></button>
								<textarea id="kdn_halim_options-' . $key . '" style="display:none"></textarea>
								<input
									type="radio"
									class="kdn_halim_options_type kdn-tooltips"
									name="kdn_halim_options[' . $key . '][type]"
									value="string"
									' . ($postMeta['type'] == 'string' ? 'checked' : '') . '
									title="' . _halim('String') . '"
								/><input
									type="radio"
									class="kdn_halim_options_type kdn-tooltips"
									name="kdn_halim_options[' . $key . '][type]"
									value="array"
									' . ($postMeta['type'] == 'array' ? 'checked' : '') . '
									title="' . _halim('Array') . '"
								/><input
									type="text"
									name="kdn_halim_options[' . $key . '][key]"
									placeholder="Post meta key"
									value="' . $postMeta['key'] . '"
								/>
								<div class="option-value">
									<input
										type="text"
										name="kdn_halim_options[' . $key . '][value]"
										placeholder="Target post meta key"
										value="' . $postMeta['value'] . '"
										style="width: 150px"
									/>
								</div>
							</div>
						';

			}

			$html .= '<div style="clear: both"></div>';

		}

		$html .= '<button type="button" class="button add-new-option">' . _halim('Add new') . '</button>';
					
	    echo $html;

	}





	/**
	 * Render menu page content.
	 *
	 * @since 	1.0.0
	 */
	public function KDN_HalimMovies_MenuContent() {
	?>
	    <div class="wrap">
	     
	        <h1>KDN Halim Movies</h1>

	        <?php settings_errors(); ?>

	        <!-- CONTENT -->
	        <form method="POST" action="options.php" class="kdn_halim_options">
				<?php
					settings_fields('kdn_halim_options_screen');
					do_settings_sections('kdn_halim_options_screen');
					submit_button();
				?>
			</form>
	         
	    </div>
	<?php
	}

}