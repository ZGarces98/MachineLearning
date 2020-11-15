/// @function __tl_private_event_perform( event );
/// @description 
/// @param event
function __tl_private_event_perform(argument0) {
	/*

	    THIS FUNCTION IS PRIVATE, SO DO NOT USE IT!!! 

	*/

	var e = argument0;

	switch (e[TLEVENT.TYPE]) {
		case TLEVENTTYPE.NONE: 
			return false;
	    case TLEVENTTYPE.SCRIPT:
	        with (e[TLEVENT.TARGET]) {
				var s = e[TLEVENT.LISTENER]
				var a = e[TLEVENT.PARAMS];
				switch (array_length_1d(a)) {
					case 0: return script_execute(s); break;
					case 1: return script_execute(s,a[0]); break;
					case 2: return script_execute(s,a[0],a[1]); break;
					case 3: return script_execute(s,a[0],a[1],a[2]); break;
					case 4: return script_execute(s,a[0],a[1],a[2],a[3]); break;
					case 5: return script_execute(s,a[0],a[1],a[2],a[3],a[4]); break;
					case 6: return script_execute(s,a[0],a[1],a[2],a[3],a[4],a[5]); break;
					case 7: return script_execute(s,a[0],a[1],a[2],a[3],a[4],a[5],a[6]); break;
					case 8: return script_execute(s,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7]); break;
					case 9: return script_execute(s,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8]); break;
					case 10: return script_execute(s,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9]); break;
					case 11: return script_execute(s,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10]); break;
					case 12: return script_execute(s,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11]); break;
					case 13: return script_execute(s,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12]); break;
					case 14: return script_execute(s,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13]); break;
					default: return script_execute(s,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14]); break;
				}
			}
			return true;
		case TLEVENTTYPE.USER:
			with (e[TLEVENT.TARGET]) {
				event_user(e[TLEVENT.LISTENER]);
			}
			return true;
		case TLEVENTTYPE.LAZY:
			if (global._tw_lazy_enabled) {
				e[@ TLEVENT.LISTENER] = true;
				ds_list_add(global._tw_lazy_todo_reset, e);
			}
			return true;
	}



}
