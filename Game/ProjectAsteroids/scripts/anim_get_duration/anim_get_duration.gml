/// @function anim_get_duration(anim);
/// @param {Animation} anim The animation
/// @description Returns the animation duration
/// @returns {real} The Animation duration
function anim_get_duration(argument0) {
	/**
	 * Gets the animation's duration, not including any repeats or 
	 * `repeatdelays`.
	 * For example, if a tween instance has a `duration` of 2 and a `repeat` 
	 * of 3, its `total_duration` would be 8 (one standard play plus 3 repeats 
	 * equals 4 total cycles).
	 */
	var _a = argument0;
	if (_a[TLANIM.DURATION] == undefined) {
		if (_a[TLANIM.TYPE] == TLTYPE.TIMELINE) {
			__tl_private_timeline_calculate_duration(_a);
		} 
	
	}
	return _a[TLANIM.DURATION];






}
