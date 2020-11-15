/// __tl_private_anim_set_event_params(anim, event_enum, params);
/// @param anim Anim
/// @param event, The event
/// @param params The params
function __tl_private_anim_set_event_params(argument0, argument1, argument2) {

	var anim = argument0;
	var event = argument0[argument1];
	var params = argument2;

	if (is_array(params)) {
		var size = array_length_1d(params);
	    for (var i = 0; i < size; i++) {
	        if (params[i] == "_self") {
	            params[@ i] = anim;
	        }
	    } 
	} else {
	    params = (params == "_self") ? [anim] : [params]; 
	}

	event[@ TLEVENT.PARAMS] = params;
	return true;




}
