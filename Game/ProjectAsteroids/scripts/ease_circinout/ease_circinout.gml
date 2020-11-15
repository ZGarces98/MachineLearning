/// @description  ease_circinout(progress)
/// @function  ease_circinout
/// @param {real} progress The easing progress from 0 to 1
/// @returns {real} The output normalized value
/// Do not call this script directly. For info about easings, refer to this folder documentation.
function ease_circinout(argument0) {
	argument0 += argument0;
	if (argument0 < 1) {
		return -.5 * (sqrt(max(0, 1 - argument0*argument0)) - 1);
	}
	argument0 -= 2;
	return .5 * (sqrt(max(0, 1 - argument0*argument0)) + 1);



}
