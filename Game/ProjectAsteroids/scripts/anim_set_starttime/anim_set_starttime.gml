/// anim_set_starttime(anim, value); 
/// @param {Animation} anim The animation
/// @param {real} time The value
function anim_set_starttime(argument0, argument1) {
	/**
	 * Sets the time at which the animation begins on its parent timeline 
	 * (after any delay that was defined). For example, if a tween starts at 
	 * exactly `3` seconds into the timeline on which it is placed, the tween's 
	 * `starttime` would be `3`.
	 * 
	 */
	var anim = argument0;
	var value = argument1;
	if (value != anim[TLANIM.STARTTIME]) {
		anim[@ TLANIM.STARTTIME] = value;
		var timeline = anim_get_parent(anim);
		if (timeline && timeline[@ TLTIMELINE.SORTCHILDREN]) {
			__tl_private_timeline_add(timeline, anim, value - anim[TLANIM.DELAY]); //ensures that any necessary re-sequencing of Animations in the timeline occurs to make sure the rendering order is correct.
		}
	}


}
