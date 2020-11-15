/// @function anim_set_progress(anim, progress);
/// @param {Animation} anim The animation
/// @param {real} progress The value
/// @description 
function anim_set_progress(argument0, argument1) {
	/**
	 * Sets the animations's progress which is a value between `0` and `1` indicating 
	 * the position of the virtual playhead (excluding repeats) where `0` is at the
	 * beginning, `0.5` is at the halfway point, and `1` is at the end (complete). 
	 *
	 * If the animation has a non-zero repeat defined, `anim_set_progress()` and 
	 * `anim_set_totalprogress()` will be different because 
	 * `anim_set_progress()` doesn't include the repeat or `repeatdelay` 
	 * whereas `totalprogress` does.
	 * 
	 */
	__tl_private_anim_seek(argument0, argument1 * anim_get_duration(argument0))


}
