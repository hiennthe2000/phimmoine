<?php
namespace KDN_HalimMovies\Models;

/**
 * Model.
 *
 * @since 	1.0.0
 */
class Model {
	
	/**
	 * Construct function.
	 */
	public function __construct() {
		
		// Action after save post and before save post meta.
		add_action('kdn/post/after_save', [$this, 'kdn_post_after_save'], 10, 9);
		
	}





	/**
	 * Callback.
	 *
	 * @param 	array 		$data 			The array contains data to save the article by the method "wp_insert_post".
	 * @param 	object 		$postData 		The object contains data according to campaign settings.
	 * @param 	object 		$postSaver 		PostSaver object - the object contains all local data.
	 * @param 	int 		$siteId 		The ID of campaign.
	 * @param 	string 		$postUrl 		The target URL.
	 * @param 	object 		$urlTuple 		The object contains the data of the target URL retrieved from the database.
	 * @param 	bool 		$isRecrawl 		Determine whether this is recrawl or not.
	 * @param 	int 		$postId 		The ID of saved post.
	 * @param 	bool 		$isFirstPage 	Determine whether this is the first page or not.
	 *
	 * @since 	1.0.0
	 */
	public function kdn_post_after_save($data, $postData, $postSaver, $siteId, $postUrl, $urlTuple, $isRecrawl, $postId, $isFirstPage) {

		// Get all options.
		$halimOptions 	= get_option('kdn_halim_options');

		// If this site is not allowed, stop.
		if (!isset($halimOptions['sites']) || empty($halimOptions['sites']) || !in_array($siteId, $halimOptions['sites'])) return;

		// Remove all allowed sites.
		unset($halimOptions['sites']);

		// Get old post meta.
		$oldPostMeta 	= $postData->getCustomMeta();

		// Initialize new post meta.
		$newPostMeta 	= [];

		/*
		 *
		 */

		// Process each option.
		foreach ($halimOptions as $halimOption) {

			// If this is and option with "array" type.
			if ($halimOption['type'] == 'array') {
				foreach ($halimOption['value'] as $item) {
					$newPostMeta[$halimOption['key']][$item['item_key']] = $this->getMetaData($item['item_value'], $oldPostMeta);
				}

			// Otherwise, this is an option with "string" type.
			} else {
				$newPostMeta[$halimOption['key']] = $this->getMetaData($halimOption['value'], $oldPostMeta);
			}

		}

		/*
		 *
		 */

		// Update new post meta.
		foreach ($newPostMeta as $metaKey => $metaValue) {
			update_post_meta($postId, $metaKey, $metaValue);
		}

		/*
		 *
		 */

		// Remove old post meta data.
		$postData->setCustomMeta(null);

    }





    /**
     * Get post meta data by post meta key.
     *
     * @param 	string 		$metaKey 		The post meta key to find and get post meta data.
     * @param 	array 		$oldPostMeta 	An array storaged all old post meta by crawler.
     *
     * @return 	any 						The post meta data with any data type.
     *
     * @since 	1.0.0
     */
    private function getMetaData($metaKey, $oldPostMeta) {

    	// Find with each old post meta.
    	foreach ($oldPostMeta as $postMeta) {

    		// If post meta key not match with meta key which need to find, continue find with another post meta key.
    		if ($postMeta['meta_key'] !== $metaKey) continue;

    		// Return post meta data if matched.
    		return $postMeta['data'];

    		// Only need one post meta data.
    		break;

    	}

    	return;

    }

}