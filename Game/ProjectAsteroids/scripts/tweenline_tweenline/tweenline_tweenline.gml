/// @description 
/// @function tweenline_tweenline([[vars ,] position="+=0"]])
/// @param {array} [vars] The special vars parameter. For more info about the `vars` array see the {@link Animation} documentation.
/// @param {string|real} [position="+=0"] The optional position parameter (see {@link tweenline_add})
/// @returns {Tweenline} The newly created Tweenline timeline instance.
function tweenline_tweenline() {
	/**
	 * Creates a new Tweenline and add it to the current tweenline as a nested tweenline.
	 * 
	 * > See tweenline_create for the reference for "vars" params.
	 * 
	 * > See tweenline_add for the reference for the optional "position" parameter.
	 * 
	 * Returns the index of the tween that has been created
	 */

	var parent = global._tw_current_creation_tl;
	var tl = tweenline_create((argument_count > 0) ? argument[0] : []);
	global._tw_current_creation_tl = parent;
	tweenline_add(tl, (argument_count > 1) ? argument[1] : "+=0");
	global._tw_current_creation_tl = tl;
	return tl;



}
