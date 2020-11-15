/// @description ease_cubicout(progress)
/// @function ease_cubicout
/// @param {real} progress The easing progress from 0 to 1
/// @returns {real} The output normalized value
/// Do not call this script directly. For info about easings, refer to this folder documentation.
function ease_cubicout(argument0) {
	argument0=1-argument0;
	return 1-(argument0*argument0*argument0);




}
