/// @function anim_set_totalprogress(anim, totalprogress);
/// @param {Animation} anim The animation
/// @param {real} totalprogress The value
/// @description 
function anim_set_totalprogress(argument0, argument1) {
	/**
	 * Sets the animations's progress which is a value between `0` and `1` indicating 
	 * the position of the virtual playhead (including repeats) where `0` is at the
	 * beginning, `0.5` is at the halfway point, and `1` is at the end (complete). 
	 *
	 * If the animation has a non-zero repeat defined, `anim_set_progress()` and 
	 * `anim_set_totalprogress()` will be different because 
	 * `anim_set_progress()` doesn't include the repeat or `repeatdelay` 
	 * whereas `totalprogress` does.
	 * 
	 */
	__tl_private_anim_seek(argument0, argument1 * anim_get_totalduration(argument0))


}
