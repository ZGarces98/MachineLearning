/// @description tween_system_count_tweens([nested=false])
/// @param {bool} [nested=false] - Count nested tweens?
/// @returns {integer} The number of tweens on the system
function tween_system_count_tweens() {
	/**
	 * Returns the number of tweens on the system. 
	 * 
	 * > Warning: this function is slow.
	 */
	var nested = (argument_count > 0) ? argument[0] : false; 
	var r;
	r  = array_length_1d(tweenline_get_children(global._tw_tl_SECONDS, nested, true, false));
	r += array_length_1d(tweenline_get_children(global._tw_tl_FRAMES, nested,  true, false));
	return r;


}
