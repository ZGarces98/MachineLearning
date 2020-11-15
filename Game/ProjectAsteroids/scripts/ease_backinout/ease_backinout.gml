/// @description  ease_bounceinout(progress [, overshot = 1.70158])
/// @function  ease_backinout
/// @param {real} progress The easing progress from 0 to 1
/// @param {real} [overshot=1.70158] The overshoot.
/// @returns {real} The output normalized value
function ease_backinout() {
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
	var _p2 = OVERSHOT * 1.525;
	var p = argument[0]+argument[0];
	if (p < 1) {
	    return .5 * p * p * ((_p2 + 1) * p - _p2);
	} 
	p -= 2;
	return .5 * (p * p * ((_p2 + 1) * p + _p2) + 2);



}
