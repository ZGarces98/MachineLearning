/// @function anim_get_totalprogress(anim);
/// @param {Animation} anim The animation
/// @returns {real} The Animation's total progress
/// @description 
function anim_get_totalprogress(argument0) {
	/**
	 * Gets the animations's `totalprogress` which is a value between `0` and `1` indicating 
	 * the position of the virtual playhead (**including** repeats) where `0` is at the
	 * beginning, `0.5` is at the halfway point, and `1` is at the end (complete). 
	 *
	 * If the animation has a non-zero repeat defined, `anim_get_progress()` and 
	 * `anim_get_totalprogress()` will be different because 
	 * `anim_get_progress()` doesn't include the repeat or `repeatdelay` 
	 * whereas `totalprogress` does.
	 */
	var dur = anim_get_totalduration(argument0); 
	return dur > 0 ? anim_get_totaltime(argument0) / dur : 0;





}
