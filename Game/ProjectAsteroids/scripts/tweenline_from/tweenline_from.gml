/// @description  tweenline_from(target_object, duration, vars [, position="+=0"])
/// @function  tweenline_from
/// @param  target_object
/// @param  duration
/// @param  vars
/// @param {string|real} [position="+=0"] The special position parameter. See tweenline_add for more info.
/// @returns {Tween} The newly created tween instance
function tweenline_from() {
	/**
	 * Adds a {@linkcode tween_from} tween to the end (or elsewhere using the 
	 * "position" parameter) of the last created Tweenline or the Tweenline 
	 * that is currently in edit mode. See tweenline_edit for more info about edit mode. 
	 *
	 * > See {@linkcode tweenline_add} for the reference for the optional "position" parameter.
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
	 * @param {array} vars
	 * The special vars array. For more info about the `vars` array see the {@link Animation} documentation.
	 *
	 */


	var tween = tween_from(argument[0], argument[1], argument[2]);
	tweenline_add(tween, (argument_count > 3) ? argument[3] : undefined);
	return tween;



}
