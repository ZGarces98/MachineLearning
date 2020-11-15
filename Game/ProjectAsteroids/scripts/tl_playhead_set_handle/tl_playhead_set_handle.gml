/// @description  tl_playhead_set_background(playhead, color, alpha, border_color, border_alpha, hover_color, hover_alpha, hover_border_color, hover_border_alpha, border_radius);
/// @function  tl_playhead_set_background
/// @param {VisualPlayhead} playhead - The index of the playhead
/// @param {real} color - background color (default is make_color_rgb(230, 230, 230))
/// @param {real} alpha - background alpha (default is 1 )
/// @param {real} border_color - background color (default is make_color_rgb(211, 211, 211))
/// @param {real} border_alpha - background alpha (default is 1 )
/// @param {real} hover_color - background color (default is make_color_rgb(218, 218, 218))
/// @param {real} hover_alpha - background alpha (default is 1 )
/// @param {real} hover_border_color - background color (default is make_color_rgb(120, 120, 120))
/// @param {real} hover_border_alpha - background alpha (default is 1 )
/// @param {real} border_radius - the radius of the corners of the background, in pixels (default is 4)
function tl_playhead_set_handle(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) {
	/**
	 * Change atributes about the playhead handle.
	 * Note: All arguments are needed. 
	 */


	var _t = argument0;
	_t[@ _playhead.handle_color] = argument1;
	_t[@ _playhead.handle_alpha] = argument2;
	_t[@ _playhead.handle_border_color] = argument3;
	_t[@ _playhead.handle_border_alpha] = argument4;

	_t[@ _playhead.handle_hover_color] = argument5;
	_t[@ _playhead.handle_hover_alpha] = argument6;
	_t[@ _playhead.handle_hover_border_color] = argument7;
	_t[@ _playhead.handle_hover_border_alpha] = argument8;

	_t[@ _playhead.handle_radius] = argument9;





}
