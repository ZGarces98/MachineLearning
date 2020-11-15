/// @description  __tl_private_timeline_render(tweenline, prevTime);
/// @param tweenline
/// @param prevTime
function __tl_private_timeline_render(argument0, argument1) {
	/**
	 * @private
	 * Render the timeline
	 */

	var tweenline = argument0;
	var prevTime = argument1;
	var time = tweenline[TLANIM.TIME];

	if (time >= prevTime) { 
		var next, anim = tweenline[TLTIMELINE.FIRST];
		while (anim != undefined) {
			next = anim[TLANIM.NEXT];
			__tl_private_timeline_render_child(anim, time, time);
			anim = next; 
		}
	} else {
		var prev, anim = tweenline[TLTIMELINE.LAST];
		while (anim != undefined) {
			prev = anim[TLANIM.PREV];
			__tl_private_timeline_render_child(anim, time, prevTime);
			anim = prev; 
		}
	}




}
