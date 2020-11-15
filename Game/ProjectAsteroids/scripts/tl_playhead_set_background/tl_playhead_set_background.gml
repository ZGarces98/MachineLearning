/// @description  tl_playhead_set_background(playhead, color, alpha, border_color, border_alpha, border_radius);
/// @function  tl_playhead_set_background
/// @param {VisualPlayhead} playhead - The index of the playhead
/// @param {real} color - Background color (default is make_color_rgb(80,80,80))
/// @param {real} alpha - background alpha (default is 0.3 )
/// @param {real} border_color - background color (default is make_color_rgb(102,102,102))
/// @param {real} border_alpha - background alpha (default is 0.5 )
/// @param {real} border_radius - the radius of the corners of the background, in pixels (default is 4)
function tl_playhead_set_background(argument0, argument1, argument2, argument3, argument4, argument5) {
	/**
	 * Change atributes about the playhead background.
	 * Note: All arguments are needed. 
	 */

	var _t = argument0;

	_t[@ _playhead.back_color] = argument1;
	_t[@ _playhead.back_alpha] = argument2;
	_t[@ _playhead.back_border_color] = argument3;
	_t[@ _playhead.back_border_alpha] = argument4;
	_t[@ _playhead.back_radius] = argument5;




}
