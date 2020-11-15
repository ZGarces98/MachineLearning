function anim_debug_info(argument0) {

	/// anim_debug_info(anim);
	/// @param {Anim} anim - The animation to get the info
	/// @returns {string} a string with the info
	/**
	 * Generates a string with debug information about a tween or tweenline.
	 *
	 */

	var a = argument0;
	var str = "";
	str += "Type : " + (a[TLANIM.TYPE] == TLTYPE.TWEEN ? "Tween" : "Tweenline");
	str += "\nTime/Total: " + string(a[TLANIM.TIME]) + "/" + string(a[TLANIM.TOTALTIME]);

	var duration = a[TLANIM.TOTALDURATION] == infinity ? "Infinity" : a[TLANIM.TOTALDURATION];

	str += "\nDuration/Total: " + string(a[TLANIM.DURATION]) + "/" + string(duration);
	str += "\nStart Time: " + string(a[TLANIM.STARTTIME]);
	str += "\nPaused: " + (a[TLANIM.PAUSED] ? "Yes" : "No");
	str += "\nReversed: " + (a[TLANIM.REVERSED] ? "Yes" : "No");
	str += "\nGarbage Collected: " + (a[TLANIM.GC] ? "Yes" : "No");
	str += "\nActive: " + (a[TLANIM.ACTIVE] ? "Yes" : "No");
	str += "\nPause Time: " + string(a[TLANIM.PAUSETIME]);
	str += "\nCycle: " + string(a[TLANIM.CYCLE]);
	str += "\nRepeat: " + string(a[TLANIM.REPEAT]);


	if (a[TLANIM.TYPE] == TLTYPE.TWEEN) {
		str += "\nInitted: " + (a[TLTWEEN.INITTED] ? "Yes" : "No");
		str += "\nSetters:";
		var setter = a[TLTWEEN.FIRSTSETTER];
		if (setter == undefined) {
			str += "NO SETTERS DEFINED";
		} else {
			while (setter != undefined) {
				var inst = setter[TLSETTER.TARGET];
				var target = instance_exists(inst) ? object_get_name(inst.object_index) : "NONE";
				var start = string(setter[TLSETTER.START]); 
				var end_value = string(setter[TLSETTER.START] + setter[TLSETTER.CHANGE]);
				str += "\n      " + target + "{" + setter[TLSETTER.PROP] + ", from " + start  + " to " + end_value + "}"; 
		
				setter = setter[TLSETTER.NEXT];
			}
		}
	}




	return str; 


}
