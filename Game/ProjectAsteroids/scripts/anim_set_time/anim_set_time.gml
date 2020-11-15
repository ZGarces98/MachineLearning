/// @function anim_set_time(anim, time);
/// @param {Animation} anim The animation
/// @param {real} time The value
/// @description 
function anim_set_time(argument0, argument1) {
	/**
	 * Sets the local position of the playhead (essentially the current time), 
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
	argument0[@ TLANIM.TIME] = argument1;


}
