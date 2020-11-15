/// @description ease_expoout(progress)
/// @function ease_expoout
/// @param {real} progress The easing progress from 0 to 1
/// @returns {real} The output normalized value
/// Do not call this script directly. For info about easings, refer to this folder documentation.
function ease_expoout(argument0) {
	return  -power( 2, -10 * argument0 ) + 1 ;




}
