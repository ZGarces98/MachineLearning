/// @description ease_circout(progress)
/// @function ease_circout
/// @param {real} progress The easing progress from 0 to 1
/// @returns {real} The output normalized value
/// Do not call this script directly. For info about easings, refer to this folder documentation.
function ease_circout(argument0) {
	argument0--;
	return sqrt(1 - argument0*argument0);




}
