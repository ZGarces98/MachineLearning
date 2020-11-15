/// @description  tween_system_step()
/// @function  tween_system_step
function tween_system_step() {
	/**
	 * > **Do not call this script manually**. It will be called automatically by the extension. 
	 * 
	 * This script will be called automatically by Tweenline Engine, so you don't need to call it manually. 
	 * But, if for some reason you need to simulate a step for the Tweenline Engine, you can 
	 * call this script manually. None that calling the script manually is only useful for the 
	 * Frames based tweens, since Seconds based tweens uses delta_time as 
	 * a measure for the passed time. 
	 */
 
	globalvar DELTATIME;
	DELTATIME = delta_time * 0.000001; //seconds per frame


	global._tw_TIME += DELTATIME * global._tw_tl_SECONDS[TLANIM.TIMESCALE];
	global._tw_FRAMES += global._tw_tl_FRAMES[TLANIM.TIMESCALE];


	global._tw_tl_FRAMES[@ TLANIM.TIME] = global._tw_FRAMES;
	global._tw_tl_FRAMES[@ TLANIM.TOTALTIME] = global._tw_FRAMES;
	global._tw_tl_SECONDS[@ TLANIM.TIME] = global._tw_TIME;
	global._tw_tl_SECONDS[@ TLANIM.TOTALTIME] = global._tw_TIME;

	if (global._tw_lazy_enabled) {
		__tl_private_lazy_reset();
	}

	var next;
	var anim = global._tw_tl_FRAMES[TLTIMELINE.FIRST];
	while (anim != undefined) {
		next = anim[TLANIM.NEXT];
		__tl_private_timeline_render_child(anim, global._tw_FRAMES, global._tw_FRAMES);
		anim = next; 
	}

	var anim = global._tw_tl_SECONDS[TLTIMELINE.FIRST];
	while (anim != undefined) {
		next = anim[TLANIM.NEXT];
		__tl_private_timeline_render_child(anim, global._tw_TIME, global._tw_TIME);
		anim = next; 
	}


}
