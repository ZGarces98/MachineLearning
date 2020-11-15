/// @function anim_get_endtime(anim);
/// @param {Animation} anim The animation
/// @returns {real} The Animation's end time
/// @description Returns the time at which the animation will finish according to the parent timeline's local time. This does factor in the timeScale.
function anim_get_endtime(argument0) {
	/**
	 * @example
	 * var tl = tweenline_create();
	 * var tween = tweenline_to(e, 1, ["x", 100]); //create a 1-second tween
	 * tweenline_add(tween, 0.5); //insert the tween at 0.5 seconds into the timeline
	 * show_debug_message(anim_get_endtime(tween)); //1.5
	 * anim_set_timescale(tween, 2); //double the speed of the tween, thus it'll finish in half the normal time
	 * show_debug_message(anim_get_endtime(tween)); //1
	 */

	return argument0[TLANIM.REPEAT] == -1
		? 999999999999
		: anim_get_starttime(argument0) + anim_get_totalduration(argument0);






}
