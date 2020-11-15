/// @description  ease_quadinout(progress)
/// @function  ease_quadinout
/// @param {real} progress The easing progress from 0 to 1
/// @returns {real} The output normalized value
/// Do not call this script directly. For info about easings, refer to this folder documentation.
function ease_quadinout(argument0) {
	argument0+=argument0;
	if (argument0 < 1) {return (argument0*argument0)*.5;}
	argument0--;
	return -(argument0*(argument0-2)-1)*.5;



}
