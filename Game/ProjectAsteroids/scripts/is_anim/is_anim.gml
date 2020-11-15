/// @description is_anim(value)
/// @function is_anim
/// @param { any } value The value
/// @returns {boolean} True if the passed value is a tween or tweenline (both are considered "Animations")
function is_anim(argument0) {
	/**
	 * Return true if `value` is a tween or tweenline (aka Animations), false otherwise.
	 */
	return (is_tween(argument0) || is_tweenline(argument0));


}
