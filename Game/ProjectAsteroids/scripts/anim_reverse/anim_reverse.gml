/// @function anim_reverse(anim [, from]);
/// @param {Animation} anim The animation to reverse
/// @param {real} time The time from which the animation should begin 
/// playing in reverse (if none is defined, it will begin playing 
/// from wherever the playhead currently is). To begin at the very 
/// end of the animation, use 0. Negative numbers are relative to 
/// the end of the animation, so -1 would be 1 second from the end.
///
/// @description 
function anim_reverse() {
	/**
	 * Reverses playback so that all aspects of the animation are oriented 
	 * backwards including, for example, a tween's ease. This will cause the 
	 * instance's time and totaltime to move back towards zero as well. You 
	 * can optionally define a specific time to jump to before reversing 
	 * (by default it begins playing in reverse from wherever the playhead 
	 * currently is). 
	 */

	var _a = argument[0];
	_a[@ TLANIM.REVERSED] = true;
	__tl_private_anim_unpause(_a);
	var t = (argument_count > 1) ? argument[1] : _a[TLANIM.TOTALTIME];
	anim_seek(_a, t);


}
