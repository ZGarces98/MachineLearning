/// @function anim_get_paused(anim);
/// @param {Animation} anim The animation
/// @returns {boolean} true if the animation is paused
function anim_get_paused(argument0) {
	/**
	 * Gets the animation's paused state which indicates whether or 
	 * not the animation is currently paused. This does not take into account
	 * anscestor timelines. So for example, a tween that is not paused might 
	 * appear paused if its parent timeline (or any ancenstor timeline) is paused. 
	 * Pausing an animation doesn't remove it from its parent timeline, 
	 * but it does cause it not to be factored into the parent timeline's 
	 * `duration`/`total_duration`. When an animation completes, 
	 * it does NOT alter its paused state.
	 * 
	 * In most cases, it is easiest to use the `anim_pause(anim)` function to pause 
	 * the animation, and `anim_resume(anim)` to resume it. 
	 * But to check the current state, you must use the `anim_get_paused(anim)` method. 
	 * It can also be useful for toggling like `anim_set_paused(anim, !anim_get_paused(anim));`
	 * 
	 * You can set the paused state initially by passing `["paused", true]` in the vars parameter.
	 * 
	 */
 
	return argument0[TLANIM.PAUSED];


}
