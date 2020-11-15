/// @function anim_resume(anim [, from_time]);
/// @description 
/// @param {Animation} anim The tween or tweenline instance 
/// @param {real} [from_time] If specified, the animation will resume from this time 
function anim_resume() {
	/**
	 * Resumes playing without altering direction (forward or reversed), 
	 * optionally jumping to a specific time first.
	 */

	var _a = argument[0];
	__tl_private_anim_unpause(_a);
	__tl_private_anim_revive(_a);
	var t = (argument_count > 1) ? argument[1] : _a[TLANIM.TOTALTIME];
	__tl_private_anim_seek(_a, t);


}
