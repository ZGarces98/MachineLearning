/// @description ease_bounceout(progress)
/// @function ease_bounceout
/// @param {real} progress The easing progress from 0 to 1
/// @returns {real} The output normalized value
/// Do not call this script directly. For info about easings, refer to this folder documentation.
function ease_bounceout(argument0) {
	var p = argument0;
	if (p < 1 / 2.75) {
	    return 7.5625 * p * p;
	} else if (p < 2 / 2.75) {
	    p -= 1.5/ 2.75;
	    return 7.5625 * p * p + .75;
	} else if (p < 2.5 / 2.75) {
	    p -= 2.25/ 2.75;
	    return 7.5625 * p * p + .9375;
	}
	p -= 2.625/ 2.75;
	return 7.5625 * p * p + .984375;




}
