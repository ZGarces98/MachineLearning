/// @description  __tl_private_tween_init(tween)
/// @function  __tl_private_tween_init
/// @param tween
function __tl_private_tween_init(argument0) {


	var _t = argument0; // tween
	if (_t[TLTWEEN.INITTED]) {return;}

	var targets = instance_select(_t[TLTWEEN.RAWTARGET]); // target

	var vars = _t[TLTWEEN.RAWVARS]; //vars
	var fromvars = _t[TLTWEEN.RAWFROMVARS]; // fromvars (Posibly undefined)

	if (fromvars != undefined) {
		var startAt = __tl_private_tween_create(targets, 0);
		__tl_private_tween_parse_rawvars(startAt, fromvars);
		startAt[@ TLTWEEN.RUNBACKWARDS] = true;
		startAt[@ TLTWEEN.INMEDIATE_RENDER] = true;
		__tl_private_anim_render(startAt, 0);
		_t[@ TLTWEEN.STARTAT] = startAt;
	}


	// For each target
	var n = array_length_1d(targets);
	for (var j = 0; j < n; j++) { 
		// For each prop
		var size = array_length_1d(vars);
		for (var i = 0; i < size; i++) {
	
			var prop = vars[i++];
			var value = vars[i]; 
			var target = targets[j];
		
			// If not, create a new one
			var setter = __tl_private_setter_create(target, prop, value, _t[TLTWEEN.FIRSTSETTER]);
			
			// If cannot be created, then throw an error
			if (setter == undefined) {
				if (is_string(prop)) {
					var name = prop;
				} else {
					var name = (is_real(prop) && script_exists(prop)) ? script_get_name(prop) : string(prop);
				}
				__tl_private_error(_t, "Alert. Variable \"" + name + "\" does not exists on target instance with id=" + string(target) + " (" + string(object_get_name((target).object_index)) + ")");
			}
		
		
			if (_t[TLTWEEN.RUNBACKWARDS]) {
				setter[@ TLSETTER.START] += setter[TLSETTER.CHANGE];
				setter[@ TLSETTER.CHANGE] = -setter[TLSETTER.CHANGE];
			}
		
			_t[@ TLTWEEN.FIRSTSETTER] = setter;
		
		
		
		}    
	}

	_t[@ TLTWEEN.INITTED] = true;



}
