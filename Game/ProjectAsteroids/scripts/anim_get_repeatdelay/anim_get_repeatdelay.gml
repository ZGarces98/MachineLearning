/// @function anim_get_repeatdelay(anim);
/// @param {Animation} anim The animation
/// @returns {real} The Animation's repeatdelay value
/// @description 
function anim_get_repeatdelay(argument0) {
	/**
	 * Gets the amount of time in seconds (or frames for frames-based tweens) 
	 * between repeats. For example, if `repeat` is `2` and `repeatdelay` is `1`, the tween 
	 * will play initially, then wait for 1 second before it repeats, then play again, 
	 * then wait 1 second again before doing its final repeat. You can set the initial 
	 * `repeatdelay` value via the vars parameter, like:
	 *
	 * ```
	 * tween_to(obj_box, 1, ["x", 100, "repeat", 2, "repeatdelay", 1]);
	 * ```
	 *
	 */
	return argument0[TLANIM.REPEATDELAY];


}
