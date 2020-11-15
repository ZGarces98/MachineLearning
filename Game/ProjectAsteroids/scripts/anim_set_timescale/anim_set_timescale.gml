/// @function anim_set_timescale(anim, timescale);
/// @param {Animation} anim The animation
/// @param {real} timescale The value
/// @description 
function anim_set_timescale(argument0, argument1) {
	/**
	 * Sets the factor that's used to scale time in the animation where:
	 * 
	 * - 1 = normal speed (the default)
	 * - 0.5 = half speed
	 * - 2 = double speed
	 * - etc. 
	 * 
	 * For example, if an animation's duration is 2 but its `timescale` is `0.5`,
	 * it will take 4 seconds to finish. If you nest that animation in a timeline whose 
	 * `timeScale` is 0.5 as well, it would take 8 seconds to finish.
	 * You can even tween the `timescale` to gradually slow it down or speed it up.
	 */

	var _a = argument0;
	var value = argument1 == 0 ? 0.00001 : argument1;
	var parent = _a[TLANIM.PARENT];

	if (parent != undefined && parent[TLTIMELINE.SMOOTHCHILDTIMING]) {
		var t = (_a[TLANIM.PAUSETIME] == 0) ? _a[TLANIM.PAUSETIME] : parent[TLANIM.TOTALTIME];
		_a[@ TLANIM.STARTTIME] = t - ((t - _a[TLANIM.STARTTIME]) * _a[TLANIM.TIMESCALE] / value);
	
	}
	_a[@ TLANIM.TIMESCALE] = value;
	__tl_private_anim_uncache(_a, false);


}
