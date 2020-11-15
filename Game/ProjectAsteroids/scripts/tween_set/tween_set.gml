/// @description  tween_set(target, vars)
/// @function tween_set
/// @param target_object
/// @param vars
/// @returns {Tween} The newly created tween instance
function tween_set(argument0, argument1) {
	/**
	 * Immediately sets properties of the target accordingly - essentially a 
	 * zero-duration {@linkcode tween_from} with a more intuitive name.
	 * 
	 * @param {Object | instance | array of objects or instances or mixed} target_object 
	 * Target object whose properties should be affected. The target can be any game maker object.
	 * You can also pass an array of objects or instances.
	 * 
	 * @param {array} vars
	 * The special vars array. For more info about the `vars` array see the {@link Animation} documentation.
	 *
	 * @example
	 * tween_set(obj_clown, ["x", 20, "y", mouse_y, "alpha", random(1), "image_angle", 45, "foo", 24.5]);
	 * 
	 * // This code does the same as:
	 * 
	 * obj_clown.x = 20;
	 * obj_clown.y = mouse_y;
	 * obj_clown.alpha = random(1);
	 * obj_clown.image_angle = 45;
	 * obj_clown.foo = 24.5;
	 */


	if (!is_array(argument1)) { return undefined;}

	var _t = __tl_private_tween_create(argument0, 0);


	_t[@ TLANIM.DEBUGARGS] = ["tween_set", argument0, argument1];

	__tl_private_tween_parse_rawvars(_t, argument1);

	_t[@ TLTWEEN.RUNBACKWARDS] = true;

	var _tl = _t[TLANIM.PARENT];
	__tl_private_timeline_add(_tl, _t, _tl[TLANIM.TIME]);

	__tl_private_tween_render(_t, 0);
	if (_t[TLANIM.DELAY] == 0) {
	    __tl_private_anim_kill(_t);
	}

	return _t;


}
