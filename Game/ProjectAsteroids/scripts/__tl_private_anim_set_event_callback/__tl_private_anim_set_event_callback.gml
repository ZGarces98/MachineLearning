/// @function __tl_private_event_set_listener(event, listener)
/// @description 
/// @param anim Anim
/// @param event, The event
/// @param callback The callback
/// @private
function __tl_private_anim_set_event_callback(argument0, argument1, argument2) {

	var anim = argument0;
	var event = argument0[argument1];
	var callback = argument2;

	event[@ TLEVENT.TARGET] = id; // CALLER ID!!! 

	if (is_string(callback)) {
		if (string_pos("user", callback) != 0) {
			var str = string_digits(callback);
			event[@ TLEVENT.TYPE] = TLEVENTTYPE.USER;
			event[@ TLEVENT.LISTENER] = real(str);
			return true;
		} else if (callback == "lazy") { 
			event[@ TLEVENT.TYPE] = TLEVENTTYPE.LAZY;
			event[@ TLEVENT.LISTENER] = false;
			return true;
		} else {
			__tl_private_error(anim, "Unknown value " + string(callback) + "for callback event");
			return true;	
		}
	} else if (script_exists(callback)) {
		event[@ TLEVENT.TYPE] = TLEVENTTYPE.SCRIPT;
		event[@ TLEVENT.LISTENER] = real(callback);
		return true;
	} else {
		__tl_private_error(anim, "Unknown callback " + string(callback));
		return false;
	}



}
