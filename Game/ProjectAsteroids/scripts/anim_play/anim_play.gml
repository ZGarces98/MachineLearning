/// @function anim_play(anim [, from_time]);
/// @param {Animation} anim The tween or tweenline instance 
/// @param {real} [from_time] If specified, the animation will resume from this time 
/// @description Plays the animation
function anim_play() {

	var _a = argument[0];
	_a[@ TLANIM.REVERSED] = false;
	__tl_private_anim_unpause(_a);
	var t = (argument_count > 1) ? argument[1] : _a[TLANIM.TOTALTIME];
	__tl_private_anim_seek(_a, t);



}
