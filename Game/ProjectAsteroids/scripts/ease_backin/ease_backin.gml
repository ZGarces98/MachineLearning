/// @description ease_bouncein(progress [, overshot = 1.70158])
/// @function ease_backin
/// @param {real} progress The easing progress from 0 to 1
/// @param {real} [overshot=1.70158] The overshoot.
/// @returns {real} The output normalized value
function ease_backin() {
	/**
	 * Do not call this script directly. For info about easings, refer to this folder documentation.
	 * Check the "easings" folder documentation to learn about how to change the easing arguments (moddifiers) 
	 */
	var OVERSHOT = 1.70158;
	if (argument_count>1) {
	    if (is_real(argument[1])) {
	        OVERSHOT = argument[1];
	    }
	}
	var p = argument[0];
	return p * p * ((OVERSHOT + 1) * p - OVERSHOT);







}
