/// @function anim_get_starttime(anim);
/// @param {Animation} anim The animation
/// @returns {real} The Animation's start time
/// @description 
function anim_get_starttime(argument0) {
	/**
	 * Gets the time at which the animation begins on its parent timeline 
	 * (after any delay that was defined). For example, if a tween starts at 
	 * exactly `3` seconds into the timeline on which it is placed, the tween's 
	 * `starttime` would be `3`.
	 * 
	 */

	return anim_get_parent(argument0) == undefined 
		? argument0[TLANIM.DELAY] 
		: argument0[TLANIM.STARTTIME];


}
