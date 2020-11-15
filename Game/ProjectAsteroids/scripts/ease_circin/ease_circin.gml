/// @description ease_circin(progress)
/// @function ease_circin
/// @param {real} progress The easing progress from 0 to 1
/// @returns {real} The output normalized value
/// Do not call this script directly. For info about easings, refer to this folder documentation.
function ease_circin(argument0) {
	return -(sqrt(max(0,1 - argument0*argument0)) - 1);




}
