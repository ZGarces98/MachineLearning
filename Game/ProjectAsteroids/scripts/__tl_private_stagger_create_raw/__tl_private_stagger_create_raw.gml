/// @function __tl_private_stagger_raw(is_timeline, targets_array, tween_function, arguments_arr, stagger, wave_amount, position);
/// @param {bool} is_timeline
/// @param {array} targets_array
/// @param {script} tween_function
/// @param {array} arguments_arr
/// @param {real} stagger
/// @param {real} wave_amount
/// @param {string|number|undefined} position
/// @returns {Array_of_Tweens} Array with the tweens that has been created
function __tl_private_stagger_create_raw(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	/**
	 * Note: the first index for arguments_arr must be undefined to speed up the process.
	 */

	var is_timeline = argument0;
	if (is_timeline) {
		// Ensure that we are editing a tweenline
		var tweenline = global._tw_current_creation_tl;
		if (tweenline == -1) {
			return false;
		}
	
		// Parse the position argument
		var position = (argument6 != undefined) 
			? __tl_private_timeline_parse_position(tweenline, argument6) 
			: anim_get_duration(tweenline);
	}

	// Uses instance_select to convert the targets to an array
	var a = instance_select(argument1);
	if (is_undefined(a)) { 
		return false;
	}

	var tween_function = argument2;
	var arguments_arr = argument3;
	var stagger = argument4;
	var wave_amount = argument5;

	var arr;
	var wave = 0;
	var size = array_length_1d(a);
	for (var i = 0; i < size; i++) { 
	
		// create and append the tweens
		arguments_arr[0] = a[i];	
	    arr[i] = script_execute_ext(tween_function, arguments_arr);
		anim_set_delay(arr[i], anim_get_delay(arr[i]) + wave * stagger);
	
	    if (((i + 1) mod wave_amount) == 0) {
			wave++;
		}
	}

	if (is_timeline) {
		for (var i = 0; i < size; i++) {
			__tl_private_timeline_add(tweenline, arr[i], position);
		}
	}

	return arr;


}
