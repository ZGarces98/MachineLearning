/// @description  __tl_private_timeline_gc(tweenline);
/// @param tweenline
/// @returns true if the timeline is persistent
function __tl_private_timeline_gc(argument0) {
	/**
	 * @private
	 * GC the timeline
	 */

	var tweenline = argument0;

	var next, anim = tweenline[TLTIMELINE.FIRST];
	while (anim != undefined) {
		next = anim[TLANIM.NEXT];
		if (!anim[TLANIM.PERSISTENT]) {
			if (anim[TLANIM.TYPE] == TLTYPE.TWEEN) {
				__tl_private_anim_kill(anim, true);
			} else {
				__tl_private_timeline_gc(anim);
			}
		}
		anim = next; 
	}

	if (tweenline[TLTIMELINE.FIRST] == undefined && tweenline[TLANIM.PARENT] != undefined) {
		__tl_private_anim_kill(tweenline, true);
	}


}
