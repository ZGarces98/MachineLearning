/// @description  __tl_private_tween_render(tween, prevTime);
/// @param tween
/// @param prevTime
function __tl_private_tween_render(argument0, argument1) {
	/**
	 * @private
	 * Render the tween
	 */

	var _t = argument0;
	var prevTime = argument1;


	if (!_t[TLTWEEN.INITTED]) {
		__tl_private_tween_init(_t);
	} else if (_t[TLANIM.TIME] == prevTime) {
		return;
	}
	if (_t[TLTWEEN.INITTED]) {
		if (_t[TLTWEEN.FIRSTSETTER] == undefined && !anim_has_events(_t)) {
			return __tl_private_anim_kill(_t);
		}
	}
			
	if (!_t[TLANIM.ACTIVE]) {
		if (!_t[TLANIM.PAUSED] && _t[TLANIM.TIME] != prevTime && _t[TLANIM.TIME] >= 0) {
			_t[@ TLANIM.ACTIVE] = true;  
		}
	}
		

	// Clamp progress between 0 and 1
	var p = _t[TLANIM.DURATION] == 0 ? 0 : clamp( _t[TLANIM.TIME] / _t[TLANIM.DURATION], 0, 1);

	// RECALCULTE THE VALUE (THIS IS THE MOST IMPORTANT PART OF THE ENGINE) [!] 
	var value = (_t[TLTWEEN.USEMODIFIERS]) 
		? script_execute_ext(_t[TLTWEEN.EASE], _t[TLTWEEN.M])  // The M array is really an array with [p, M1, M2, M3... ]; 
		: script_execute(_t[TLTWEEN.EASE], p);  
			

	var setter = _t[TLTWEEN.FIRSTSETTER];
	while (setter != undefined) {
		
		var t = setter[TLSETTER.TARGET];
		if (instance_exists(t)) {
			// If the target exists
		
			var val = setter[TLSETTER.IS_COLOR] 
				? merge_colour(setter[TLSETTER.START], setter[TLSETTER.START] + setter[TLSETTER.CHANGE], value) 
				: setter[TLSETTER.START] + value * setter[TLSETTER.CHANGE];
		
			if (is_string(setter[TLSETTER.PROP])) {
				variable_instance_set(t, setter[TLSETTER.PROP], val);
			} else {
				with (t) { script_execute(setter[TLSETTER.PROP], val); }
			}
		
		} else { 
			// Removes the setter from the linked list (skiping all the setters with the same target)
			var prev = setter[TLSETTER.PREV];
			var next = setter[TLSETTER.NEXT];
			while (next != undefined && next[TLSETTER.TARGET] == t) {
				next = next[TLSETTER.NEXT];
			}
			if (prev != undefined) {
				prev[@ TLSETTER.NEXT] = next;
			}
			if (next != undefined) {
				next[@ TLSETTER.PREV] = prev;
			}
			if (_t[TLTWEEN.FIRSTSETTER] == setter) {
				_t[@ TLTWEEN.FIRSTSETTER] = next; 	
			}
			setter = next;
			continue;
		}
		setter = setter[TLSETTER.NEXT];
	}




}
