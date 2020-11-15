/// @description  tweenline_stagger_fromto(targets_array, duration, from_vars, to_vars , stagger [, position="+=0" [,waves_amount=1]])
/// @function  tweenline_stagger_fromto
/// @param {Array of instances or objects} targets_array - The target instances to tween
/// @param {real} duration - The duration in seconds or frames (for frames based tweens)
/// @param {Array} from_vars - The special vars array for the starting values. For more info about the `vars` array see the {@link Animation} documentation.
/// @param {Array} to_vars - The special vars array for the ending values. For more info about the `vars` array see the {@link Animation} documentation.
/// @param {real} stagger - Amount of time to stagger the start time of each tween.
/// @param {string|real} [position="+=0"] The special position parameter. See tweenline_add for more info.
/// @param {integer} [wave_amount=1] - How many instances will grouped in one "wave"
/// @returns {Array of Tweens} Array with the tweens that has been created
function tweenline_stagger_fromto() {
	/**
	 * Tweens an array of targets from and to a common set of destination values, but 
	 * staggers their start times by a specified amount of time, creating an 
	 * evenly-spaced sequence with a surprisingly small amount of code.
	 * 
	 * The parameter stagger is the amount of time in seconds (or frames if the 
	 * timeline is frames-based) to stagger the start time of each tween.
	 * 
	 * The difference between {@linkcode tweenline_stagger_fromto} and {@linkcode tween_stagger_fromto} is that the first 
	 * adds the tweens to the current tweenline that is in edit mode. 
	 * 
	 * > For more info about the edit mode, see {@linkcode tweenline_edit}
	 * 
	 * > For more info about the optional position parameter, see {@linkcode tweenline_add}
	 * 
	 * > For the optional parameter wave_amount, see {@linkcode tween_stagger_to}
	 * 
	 * Returns an array of the indexes of the tweens that has been created
	 */
	return __tl_private_stagger_create_raw(
		true,
		argument[0], 
		tween_fromto,
		[undefined, argument[1], argument[2], argument[3]],
		argument[4],
		(argument_count > 5) ? argument[5] : 1,
		(argument_count > 6) ? argument[6] : undefined
	);



}
