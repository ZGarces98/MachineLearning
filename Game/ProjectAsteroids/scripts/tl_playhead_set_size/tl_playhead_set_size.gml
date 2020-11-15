/// @description  tl_playhead_set_size(playhead, width, height, x, y, handle_width, handle_height);
/// @function  tl_playhead_set_size
/// @param {VisualPlayhead} playhead
/// @param {real} width - the width of the playhead (Default is: room_width*.7)
/// @param {real} height - the height of the playhead (Default is: 12)
/// @param {real} x - the x of the playhead (Default is: (room_width- playhead_width)*.5)
/// @param {real} y - the y of the playhead (Default is: room_height*.8)
/// @param {real} handle_width - the width of the handle (Default is: playhead_height*1.5)
/// @param {real} handle_height - the height of the handle (Default is: playhead_height*1.5)
function tl_playhead_set_size(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	/**
	 * Defines the width, height, position and size of the handle of the Visual Playhead. If you pass 
	 * undefined as the value of some parameter, then the default value is used
	 */
	var _t = argument0;
	_t[@ _playhead.width] = is_undefined(argument1) ? room_width * .7 : argument1;
	_t[@ _playhead.height] = is_undefined(argument2) ? 12 : argument2;
	_t[@ _playhead.x] = is_undefined(argument3) ? room_width - _t[_playhead.width] * .5 : argument3;
	_t[@ _playhead.y] = is_undefined(argument4) ? room_height * .8 : argument4;
	_t[@ _playhead.handle_width] = is_undefined(argument5) ? _t[_playhead.height] * 1.5 : argument5;
	_t[@ _playhead.handle_height] = is_undefined(argument6) ? _t[_playhead.height] * 1.5 : argument6;



}
