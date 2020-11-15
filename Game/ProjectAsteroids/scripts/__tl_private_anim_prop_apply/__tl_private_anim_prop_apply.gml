/// __tl_private_anim_prop_apply(anim, prop_name, value);
/// @param anim
/// @param prop_name
/// @param value
function __tl_private_anim_prop_apply(argument0, argument1, argument2) {

	var _a = argument0;
	var value = argument2;
	switch (argument1) {
		case "ease":
			if (_a[TLANIM.TYPE] == TLTYPE.TWEEN) {
				_a[@ TLTWEEN.EASE] = value;
			}
			return true;
		case "delay":
			_a[@ TLANIM.DELAY] = value;
			return true;
		case "paused":
			_a[@ TLANIM.PAUSED] = value; 
			return true;
		case "useframes":
			_a[@ TLANIM.PARENT] = value ? global._tw_tl_FRAMES : global._tw_tl_SECONDS;
			return true;
		case "repeat":
			_a[@ TLANIM.REPEAT] = value;
			_a[@ TLANIM.TOTALDURATION] = undefined;
			return true;
		case "repeatdelay":
			_a[@ TLANIM.REPEATDELAY] = value;  
			_a[@ TLANIM.TOTALDURATION] = undefined;
			return true;
		case "yoyo":
			_a[@ TLANIM.YOYO] = value;
			return true;
		case "patrol":
			if (value) {
			    _a[@ TLANIM.REPEAT] = -1; 
			    _a[@ TLANIM.YOYO] = true; 
				_a[@ TLANIM.TOTALDURATION] = undefined;
			}
			return true;
		case "loop":
			if (value) {
			    _a[@ TLANIM.REPEAT] = -1;
				_a[@ TLANIM.TOTALDURATION] = undefined;
			}
			return true;
		case "persistent":
			_a[@ TLANIM.PERSISTENT] = value;
			return true;
		case "oncomplete":
			return __tl_private_anim_set_event_callback(_a, TLANIM.ONCOMPLETE, value);
		case "oncompleteparams":
			return __tl_private_anim_set_event_params(_a, TLANIM.ONCOMPLETE, value);
		case "onreversecomplete":
			return __tl_private_anim_set_event_callback(_a, TLANIM.ONREVERSECOMPLETE, value);
		case "onreversecompleteparams":
			return __tl_private_anim_set_event_params(_a, TLANIM.ONREVERSECOMPLETE, value);
		case "onupdate":
			return __tl_private_anim_set_event_callback(_a, TLANIM.ONUPDATE, value);
		case "onupdateparams":
			return __tl_private_anim_set_event_params(_a, TLANIM.ONUPDATE, value);
		case "onstart":
			return __tl_private_anim_set_event_callback(_a, TLANIM.ONSTART, value);
		case "onstartparams":
			return __tl_private_anim_set_event_params(_a, TLANIM.ONSTART, value);
		case "onrepeat":
			return __tl_private_anim_set_event_callback(_a, TLANIM.ONREPEAT, value);
		case "onrepeatparams":
			return __tl_private_anim_set_event_params(_a, TLANIM.ONREPEAT, value);
		default:
			return false;
	}


}
