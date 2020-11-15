/// @description  __tl_private_timeline_render_child(anim, time, min_time_to_render);
/// @param anim
/// @param time
/// @param min_time_to_render
function __tl_private_timeline_render_child(argument0, argument1, argument2) {
	/**
	 * @private
	 * Render a child of the timeline
	 */
	var anim = argument0;
	var time = argument1;
	var min_time_to_render = argument2;
	var t;
	if (anim[TLANIM.ACTIVE] || (min_time_to_render >= anim[TLANIM.STARTTIME] && !anim[TLANIM.PAUSED])) {
	
		if (!anim[TLANIM.REVERSED]) {
			t = (time - anim[TLANIM.STARTTIME]) * anim[TLANIM.TIMESCALE];
		} else {
			if (anim[TLANIM.TOTALDURATION] == undefined) {
				__tl_private_timeline_calculate_duration(anim);
			}
			t = anim[TLANIM.TOTALDURATION] - ((time - anim[TLANIM.STARTTIME]) * anim[TLANIM.TIMESCALE]);
		}
	
		__tl_private_anim_render(anim, t);
	
	}


}
