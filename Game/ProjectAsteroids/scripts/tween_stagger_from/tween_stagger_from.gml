/// @description tween_stagger_from(targets_array, duration, vars , stagger [, wave_amount=1])
/// @function tween_stagger_from
/// @param {Array of instances or objects} targets_array - The target instances to tween
/// @param {real} duration - The duration in seconds or frames (for frames based tweens)
/// @param {Array} vars - The special vars array. For more info about the `vars` array see the {@link Animation} documentation.
/// @param {real} stagger - Amount of time to stagger the start time of each tween.
/// @param {integer} [wave_amount=1] - How many instances will grouped in one "wave"
/// @returns {Array of Tweens} Array with the tweens that has been created
function tween_stagger_from() {
	/**
	 * Tweens an array of targets from a common set of destination values (using 
	 * the current values as the end values), but staggers their start times by 
	 * a specified amount of time, creating an evenly-spaced sequence with a surprisingly
	 * small amount of code.
	 *     
	 * The parameter `stagger` is the amount of time in seconds (or frames if the 
	 * timeline is frames-based) to stagger the start time of each tween.
	 * 
	 * `wave_amount` (optional) indicates how many instances will grouped in one "wave". For 
	 * example, if you want to animate 30 `obj_box` instances placed one after another in a 6 rows 
	 * and 5 columns, and you want to generate 5 staggers of 6 instances (one stagger 
	 * for each column), you neeed to pass 6 as the value of `wave_amount`. The default 
	 * is 1, meaning that each instance will be staggered. 
	 *     
	 * Returns an array of the indexes of the tweens that has been created
	 *     
	 * @example
	 * tweens_array = tween_stagger_from([obj_box1, obj_box2, obj_box3], 2.8,  ["x", 800,"angle",270, "ease", ease_backout], 0.4);
	 *     
	 */
	return __tl_private_stagger_create_raw(
		false,
		argument[0], 
		tween_from,
		[undefined, argument[1], argument[2]],
		argument[3],
		(argument_count > 4) ? argument[4] : 1,
		undefined
	);


}
