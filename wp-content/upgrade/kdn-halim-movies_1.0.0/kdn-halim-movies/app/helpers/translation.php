<?php

/**
 * A replacement function for translatable texts.
 *
 * @param 	string 	$string 	Text to be translated.
 * @return 	string 				Translated text.
 */
function _halim($string) {

    return __($string, 'kdn-halim-movies');
    
}




/**
 * Post meta settings description.
 *
 * @since 	1.0.0
 */
function _halim_desc() {

	return '<div class="kdn_halim_options_desc"><small>' . _halim('Set Post meta for posts with data taken from Post meta configured in the campaign.<br/><br/><b style="color:blue">* Post meta key:</b> Post meta key will be assigned data.<br/><br/><b style="color:blue">* Target post meta key:</b> Post meta key configured in the campaign.') . '</small></div>';

}