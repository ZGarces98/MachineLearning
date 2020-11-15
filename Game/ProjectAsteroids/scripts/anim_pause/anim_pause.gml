/// @function anim_pause(anim [, at_time]);
/// @param {Animation} anim The tween or tweenline instance 
/// @param {real} [at_time] If specified, the animation will resume from this time 
/// @description Pauses the animation
function anim_pause() {

	var _a = argument[0];
	__tl_private_anim_pause(_a);
	if (argument_count > 1) {
		anim_seek(_a, argument[1]);
	}



}
