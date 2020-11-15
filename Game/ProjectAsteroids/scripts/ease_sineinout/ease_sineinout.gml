/// @description  ease_sineinout(progress)
/// @function  ease_sineinout
/// @param {real} progress The easing progress from 0 to 1
/// @returns {real} The output normalized value
/// Do not call this script directly. For info about easings, refer to this folder documentation.
function ease_sineinout(argument0) {
	return -.5*(cos(pi*argument0) - 1);



}
