/// @description  tl_playhead_set_mask_area( playhead, area_scale);
/// @function  tl_playhead_set_mask_area
/// @param {VisualPlayhead} playhead
/// @param {real} area_scale - The scale of the interactive area. (1 is 100%, 1.5 is 150% and so on)
function tl_playhead_set_mask_area(argument0, argument1) {
	/**
	 * Defines the scale of the interactive area. The interactive area is 
	 * the non visible area in which the user will place the mouse or finger to 
	 * interact with the playhead handle. If you pass 1 in area_scale, the interactive
	 * area will fit the visual area of the handle. If you pass 2, it will be twice as bigger 
	 * as the visible area. 2.5 is 250% of the size of the visual 
	 * area, and so. (2 is the default.)
	 * 
	 */
 
	var _t = argument0;
	_t[@ _playhead.handle_area] = argument1; 




}
