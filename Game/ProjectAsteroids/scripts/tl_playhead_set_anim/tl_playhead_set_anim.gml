/// @description  tl_playhead_set_anim(playhead, anim);
/// @function  tl_playhead_set_background
/// @param {VisualPlayhead} playhead - The index of the playhead
/// @param {Anim} anim - The animation to use
function tl_playhead_set_anim(argument0, argument1) {
	/**
	 * Change the animation to use
	 */


	var _t = argument0;
	_t[@ _playhead.anim] = is_anim(argument1) ? argument1 : undefined;





}
