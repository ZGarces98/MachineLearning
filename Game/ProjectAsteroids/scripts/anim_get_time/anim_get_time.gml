/// @function anim_get_time(anim);
/// @param {Animation} anim The animation
/// @returns {real} The Animation's time
/// @description 
function anim_get_time(argument0) {
	/**
	 * Gets the local position of the playhead (essentially the current time), 
	 * not including any `repeats` or `repeatdelays`. 
	 * If the tween has a non-zero repeat, its time goes back to zero upon 
	 * repeating even though the `totaltime` continues forward linearly (or if `yoyo` is 
	 * `true`, the time alternates between moving forward and backward). 
	 * `time` never exceeds the duration whereas the `totaltime` reflects the overall 
	 * time including any `repeats` and `repeatdelays`.
	 * 
	 * For example, if a tween instance has a `duration` of `2` and a `repeat` of `3`, 
	 * `totalTime` will go from `0` to `8` during the course of the tween 
	 * (plays once then repeats 3 times, making 4 total cycles) whereas `time` would 
	 * go from `0` to `2` a total of 4 times.
	 *
	 */

	return argument0[TLANIM.TIME];


}
