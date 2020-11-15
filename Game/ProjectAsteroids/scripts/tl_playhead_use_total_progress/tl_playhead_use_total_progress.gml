/// @description  tl_playhead_use_total_progress( playhead , enable);
/// @function  tl_playhead_step
/// @param {VisualPlayhead} playhead 
/// @param {bool} enable
function tl_playhead_use_total_progress(argument0, argument1) {
	/**
	 * Determines if the visual playhead will use the total progress of the animation
	 * instead of the lap progress. If your animation (tween or tweenline) does not have
	 * any repetitions, then changing this has no effect. 
	 */



	argument0[@ _playhead.use_total_progress] = argument1;


}
