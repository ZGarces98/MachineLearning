/// @description tween_to(target_object, duration, vars);
/// @function tween_to
/// @param target_object
/// @param duration
/// @param vars
/// @returns {Tween} The newly created tween instance
function tween_to(argument0, argument1, argument2) {
	/**
	 * Creates a new tween that animates the target_object variables to the specified 
	 * destination values (from the current values) and returns its index. 
	 *   
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
	 */ 

	// If vars is not an array, then exit and return -1 (ERROR)
	if (!is_array(argument2)) { return undefined;}

	var _t = __tl_private_tween_create(argument0, argument1);

	_t[@ TLANIM.DEBUGARGS] = ["tween_to", argument0, argument1, argument2];

	__tl_private_tween_parse_rawvars(_t, argument2);

	var _tl = _t[TLANIM.PARENT];
	__tl_private_timeline_add(_tl, _t, _tl[TLANIM.TIME]);

	return _t;



}
