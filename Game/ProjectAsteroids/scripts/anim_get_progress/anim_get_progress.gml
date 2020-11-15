/// @function anim_get_progress(anim);
/// @param {Animation} anim The animation
/// @returns {real} The Animation's progress (from 0 to 1)
/// @description
function anim_get_progress(argument0) {
	/**
	 * Gets the animations's progress which is a value between `0` and `1` indicating 
	 * the position of the virtual playhead (excluding repeats) where `0` is at the
	 * beginning, `0.5` is at the halfway point, and `1` is at the end (complete). 
	 *
	 * If the animation has a non-zero repeat defined, `anim_get_progress()` and 
	 * `anim_get_totalprogress()` will be different because 
	 * `anim_get_progress()` doesn't include the repeat or `repeatdelay` 
	 * whereas `totalprogress` does.
	 * 
	 */

	var dur = anim_get_duration(argument0);
	return dur > 0 ? argument0[TLANIM.TIME] / dur : 0;


}
