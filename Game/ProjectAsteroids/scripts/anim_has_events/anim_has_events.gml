/// @function anim_has_events
/// @param {Anim} anim The animation
/// @return {bool} True if the animation has any event asociated
/// @description Returns true if the animation has any event asociated
function anim_has_events(argument0) {

	var events = [
		TLANIM.ONCOMPLETE, 
		TLANIM.ONUPDATE, 
		TLANIM.ONREVERSECOMPLETE, 
		TLANIM.ONREPEAT, 
		TLANIM.ONSTART
	];

	for (var i = 0; i < 5; i++) {
		var e = argument0[events[i]];
		if (e[TLEVENT.TYPE] != TLEVENTTYPE.NONE) {
			return true;
		}
	}

	return false;


}
