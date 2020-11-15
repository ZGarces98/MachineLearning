/// @function anim_get_timescale(anim);
/// @param {Animation} anim The animation
/// @returns {real} The Animation's timescale
/// @description 
function anim_get_timescale(argument0) {
	/**
	 * Factor that's used to scale time in the animation where:
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
	return argument0[TLANIM.TIMESCALE];


}
