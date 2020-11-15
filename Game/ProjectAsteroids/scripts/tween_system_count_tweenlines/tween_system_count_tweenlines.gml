/// @description tween_system_count_tweenlines([nested=false])
/// @param {bool} [nested=false] - Count nested tweens?
/// @returns {integer} The number of tweenlines on the system
function tween_system_count_tweenlines() {
	/**
	 * Returns the number of tweenlines on the system. 
	 *
	 * > Warning: this function is slow.
	 */
	var nested = (argument_count > 0) ? argument[0] : false; 
	var r;
	r  = array_length_1d(tweenline_get_children(global._tw_tl_SECONDS, nested, false, true));
	r += array_length_1d(tweenline_get_children(global._tw_tl_FRAMES, nested, false, true));
	return r;


}
