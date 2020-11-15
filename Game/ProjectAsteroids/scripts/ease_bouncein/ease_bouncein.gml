/// @description ease_bouncein(progress)
/// @function ease_bouncein
/// @param {real} progress The easing progress from 0 to 1
/// @returns {real} The output normalized value
/// Do not call this script directly. For info about easings, refer to this folder documentation.
function ease_bouncein(argument0) {
	var p = 1- argument0;
	if (p < 1 / 2.75) {
	    return 1 - (7.5625 * p * p);
	} else if (p < 2 / 2.75) {
	    p -= 1.5/ 2.75;
	    return  1 - (7.5625 * p * p + .75);
	} else if (p < 2.5 / 2.75) {
	    p -= 2.25/ 2.75;
	    return  1 - (7.5625 * p * p + .9375);
	}
	p -= 2.625/ 2.75;
	return  1 - (7.5625 * p * p + .984375);







}
