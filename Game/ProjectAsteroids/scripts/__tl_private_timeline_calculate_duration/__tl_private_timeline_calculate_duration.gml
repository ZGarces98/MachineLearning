/// @description  __tl_private_timeline_calculate_duration(timeline);
/// @param timeline - The Timeline object 
function __tl_private_timeline_calculate_duration(argument0) {
	/**
	 * @private
	 * Calulate the duration and totalduration of a timeline
	 */
	var _tl = argument0;
	var child = _tl[TLTIMELINE.FIRST];
	var max_time = 0;
	var time;
	while (child != undefined) {
	
		time = anim_get_starttime(child) + anim_get_totalduration(child);
		if (time > max_time) {
			max_time = time;
		}
		child = child[TLANIM.NEXT];
	}
	_tl[@ TLANIM.DURATION] = max_time;
	_tl[@ TLANIM.TOTALDURATION] = (_tl[TLANIM.REPEAT] == -1) ? infinity : max_time * (_tl[TLANIM.REPEAT] + 1);


}
