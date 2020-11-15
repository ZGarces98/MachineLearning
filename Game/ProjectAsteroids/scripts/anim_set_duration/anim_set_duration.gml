/// @function anim_set_duration(anim, duration);
/// @param {Animation} anim The animation
/// @param {real} duration The duration
/// @description 
function anim_set_duration(argument0, argument1) {
	/**
	 * Sets the animation's duration, not including any repeats or 
	 * `repeatdelays`.
	 * For example, if a tween instance has a `duration` of 2 and a `repeat` 
	 * of 3, its `total_duration` would be 8 (one standard play plus 3 repeats 
	 * equals 4 total cycles).
	 */
	var anim = argument0;
	var value = argument1; 
	anim[@ TLANIM.DURATION] = value;
	anim[@ TLANIM.TOTALDURATION] = undefined;

	__tl_private_anim_uncache(anim, false); 

	// TODO: Apply smoth child timing if necesary
	/*
	var timeline = anim[TLANIM.PARENT];
	var time = anim[TLANIM.TIME];
	if (timeline[TLTIMELINE.SMOOTHCHILDTIMING]) && (time > 0) && (time < _duration) && (value != 0) {
		totalTime(_totalTime * (value / _duration), true);
	}
	*/



}
