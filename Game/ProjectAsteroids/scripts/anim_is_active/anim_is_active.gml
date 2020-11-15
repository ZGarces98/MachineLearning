/// @function anim_is_active(anim);
/// @param {Animation} anim The animation
/// @returns {boolean} True, if the animation is active, false otherwise
/// @description 
function anim_is_active(argument0) {
	/**
	 * Indicates whether or not the animation is currently active (meaning 
	 * the virtual playhead is actively moving across this instance's time 
	 * span and it is not paused, nor are any of its ancestor timelines). 
	 * So for example, if a tween is in the middle of tweening, it's active, 
	 * but after it is finished (or before it begins), it is not active. 
	 * If it is paused or if it is placed inside of a timeline that's paused 
	 * (or if any of its ancestor timelines are paused), `anim_is_active()` 
	 * will return `false`. If the playhead is directly on top of the animation's 
	 * start time (even if it hasn't rendered quite yet), that counts as "active".
	 *
	 */
	return argument0[TLANIM.ACTIVE];






}
