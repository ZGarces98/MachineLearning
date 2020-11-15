/// @function anim_get_repeat(anim);
/// @param {Animation} anim The animation
/// @returns {real} The Animation's repeat value
/// @description 
function anim_get_repeat(argument0) {
	/**
	 * Gets the number of times that the tween should repeat after its first iteration. 
	 * For example, if `repeat` is `1`, the tween will play a total of twice (the initial 
	 * play plus `1` repeat). To repeat indefinitely, use `-1`. repeat should always be 
	 * an integer.
	 * 
	 * To cause the repeats to alternate between forward and backward, set `yoyo` to 
	 * true. To add a time gap between repeats, use `repeatdelay`. You can set the 
	 * initial `repeat` value via the vars parameter, like:
	 * 
	 * ```
	 * tween_to(obj_box, 1, ["x", 100, "repeat", 2]); 
	 * ```
	 *
	 */
	return argument0[TLANIM.REPEAT];


}
