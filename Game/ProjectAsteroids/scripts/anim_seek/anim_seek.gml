/// @function anim_seek(anim [, time]);
/// @description 
/// @param {Animation} anim The tween or tweenline instance 
/// @param {real} [time] If specified, the animation will resume from this time 
function anim_seek(argument0, argument1) {
	/**
	 * Jumps to a specific time without affecting whether or not the 
	 * Animation (Tween or Tweenline) instance is paused or reversed.
	 */

	__tl_private_anim_seek(argument0, argument1); 


}
