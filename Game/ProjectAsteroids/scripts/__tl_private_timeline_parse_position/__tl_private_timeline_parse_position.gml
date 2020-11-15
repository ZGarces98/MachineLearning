/// @description __tl_private_parse_position(tweenline, position)
/// @function __tl_private_parse_position
/// @param {Tweenline} tweenline
/// @param {real} position
function __tl_private_timeline_parse_position(argument0, argument1) {
	/**
	 * @private
	 * Parses the position value (for tweenline_add function and similiars)
	 * Returns the position in seconds (or frames for frames based tweenlines)        
	 */


	var tweenline = argument0;
	var str = argument1;

	// if it's an absolute position
	if (!is_string(str)) { 
		if (str == undefined) {
			return anim_get_duration(tweenline);
		} else {
			var value = real(str);
			return (value < 0) ? anim_get_duration(tweenline) - value : value;
		}
	}

	var label = str;
	var value = 0;

	// Check if it's a relative position (Try to find "+=" or "-=")
	var pos = string_pos("=", str) - 1; // example: "mylabel+=2" (var pos = 8, the "+" character position)
	if (pos > 0) { //  relative position
	    label = string_copy(str, 1, pos - 1); //mylabel+=2 (label=9)
		var str2 =string_delete(str,1,pos+1); //deletes the first 2 characters ("+=","-=")
	    if (string_char_at(str,pos) == "+") {
	        value = +real(str2);
	    } else if (string_char_at(str,pos) == "-") {
	        value = -real(str2);
	    }
	} 

	switch (label) {
		case "": 
			value += anim_get_duration(tweenline);
			break;
				
		case "_end": // reserved word "_end"
	        value += anim_get_starttime(tweenline[TLTIMELINE.LAST]) + anim_get_duration(tweenline[TLTIMELINE.LAST]);
			break;
				
		case "_start": // reserved word "_start"
	        value += anim_get_starttime(tweenline[TLTIMELINE.LAST]);
			break;
				
		default: // Labels
			value += __tl_private_timeline_label_find_or_create(tweenline, label, undefined);
	}

	return value;



}
