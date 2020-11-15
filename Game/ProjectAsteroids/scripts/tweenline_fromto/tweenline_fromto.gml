/// @description  tweenline_fromto(tweenline, target_object, duration, from_vars, to_vars [, position="+=0"])
/// @function tweenline_fromto
/// @param target_object
/// @param duration
/// @param from_vars
/// @param to_vars
/// @param {string|real} [position="+=0"] The special position parameter. See tweenline_add for more info.
/// @returns {Tween} The newly created tween instance
function tweenline_fromto() {
	/**
	 * Adds a {@linkcode tween_fromto} tween to the end (or elsewhere using the 
	 * `position` parameter) of the last created Tweenline or the Tweenline 
	 * that is currently in edit mode. See {@linkcode tweenline_edit} for more info about edit mode. 
	 *  
	 * > Note: For a complete description of the arguments and the usage mode, please refer to {@linkcode tween_to}.
	 *  
	 * > See {@linkcode tweenline_add} for the reference for the optional `position` parameter.
	 * 
	 * Returns the index of the tween that has been created.
	 *
	 * @param {Object | instance | array of objects or instances or mixed} target_object 
	 * Target object whose properties should be affected. The target can be any game maker object.
	 * You can also pass an array of objects or instances.
	 *         
	 * @param {real} duration
	 * Duration in seconds (or frames if "useframes" true is set in the vars parameter)
	 *         
	 * @param {array} from_vars
	 * The special vars array for the starting properties. For more info about the `vars` array see the {@link Animation} documentation.
	 *
	 * @param {array} to_vars
	 * The special vars array for the ending properties. For more info about the `vars` array see the {@link Animation} documentation.
	 *
	 */


	var tween = tween_fromto(argument[0], argument[1], argument[2],argument[3]);
	if (argument_count>4) {
	    tweenline_add( tween,argument[4]);
	} else {
	    tweenline_add( tween);
	}

	return tween;



}
