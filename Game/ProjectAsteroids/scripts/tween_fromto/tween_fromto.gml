/// @description  tween_fromto(target_object, duration, from_vars, to_vars);
/// @function  tween_fromto
/// @param target_object
/// @param  duration
/// @param  from_vars
/// @param  to_vars
/// @returns {Tween} The newly created tween instance
function tween_fromto(argument0, argument1, argument2, argument3) {
	/**
	 * 
	 * Allows you to define both the starting and ending values (as opposed to {@linkcode tween_to} and 
	 * {@linkcode tween_from} tweens which are based on the target's current values at one end or the other).
	 *     
	 * > Note:   If you define some property in `from_vars`, but not in `to_vars` or viceversa, 
	 * > the missing values will be detected automatically by the tweenline engine. 
	 *     
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

	// If vars is not an array, then exit and return -1 (ERROR)
	if (!is_array(argument2) || !is_array(argument3)) { return undefined;}

	var _t = __tl_private_tween_create(argument0, argument1);

	_t[@ TLANIM.DEBUGARGS] = ["tween_fromto", argument0, argument1, argument2, argument3];
	_t[@ TLTWEEN.INMEDIATE_RENDER] = true; 

	_t[@ TLTWEEN.RAWFROMVARS] = argument2;
	__tl_private_tween_parse_rawvars(_t, argument2);
	__tl_private_tween_parse_rawvars(_t, argument3);


	var _tl = _t[TLANIM.PARENT];
	__tl_private_timeline_add(_tl, _t, _tl[TLANIM.TIME]);

	if (_t[TLTWEEN.INMEDIATE_RENDER]) {
		__tl_private_anim_render(_t, -_t[TLANIM.DELAY]);
	}

	return _t;



}
