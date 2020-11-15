/// @description  ease_expoinout(progress)
/// @function  ease_expoinout
/// @param {real} progress The easing progress from 0 to 1
/// @returns {real} The output normalized value
/// Do not call this script directly. For info about easings, refer to this folder documentation.
function ease_expoinout(argument0) {
	argument0+=argument0;
	if (argument0 < 1) return .5 * power( 2, 10 * (argument0 - 1) );
	argument0--;
	return .5 * ( -power( 2, -10 * argument0) + 2 );



}
