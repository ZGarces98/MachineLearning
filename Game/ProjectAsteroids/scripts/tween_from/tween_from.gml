/// @description  tween_from(target_object, duration, vars);
/// @function  tween_from
/// @param target_object
/// @param duration
/// @param vars
/// @returns {Tween} The newly created tween instance
function tween_from(argument0, argument1, argument2) {
	/**
	 * Creates a new tween that animates the target_object variables **from** the specified 
	 * values (from the current values) and returns its index. 
	 * 
	 * You define the **starting** values and the current values are used as the destination values 
	 * which is great for doing things like animating objects onto the screen because you can set
	 * them up initially the way you want them to look at the end of the tween and then animate in 
	 * from elsewhere.
	 *    
	 * > Note: For a complete description of the arguments and the usage mode, please refer to {@linkcode tween_to}.
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

	// If vars is not an array, then exit and return undefined (ERROR)
	if (!is_array(argument2)) { return undefined;}

	var _t = __tl_private_tween_create(argument0, argument1);


	_t[@ TLANIM.DEBUGARGS] = ["tween_from", argument0, argument1, argument2];


	_t[@ TLTWEEN.RUNBACKWARDS] = true;
	_t[@ TLTWEEN.INMEDIATE_RENDER] = true; 

	__tl_private_tween_parse_rawvars(_t, argument2);

	var _tl = _t[TLANIM.PARENT];
	__tl_private_timeline_add(_tl, _t, _tl[TLANIM.TIME]);

	if (_t[TLTWEEN.INMEDIATE_RENDER]) {
		__tl_private_anim_render(_t, -_t[TLANIM.DELAY]);
	}

	return _t;



}
