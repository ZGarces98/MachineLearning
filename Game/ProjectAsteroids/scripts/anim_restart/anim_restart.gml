/// @function anim_restart(anim);
/// @param {Animation} anim The tween or tweenline instance 
/// @description Restarts the animation
function anim_restart(argument0) {

	var _a = argument0;
	__tl_private_anim_unpause(_a);
	_a[@ TLANIM.REVERSED] = false;
	__tl_private_anim_seek(_a, 0);



}
