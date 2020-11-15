/// @description  ease_bounceinout(progress)
/// @function  ease_bounceinout
/// @param {real} progress The easing progress from 0 to 1
/// @returns {real} The output normalized value
/// Do not call this script directly. For info about easings, refer to this folder documentation.
function ease_bounceinout(argument0) {
	var p = argument0;
	var invert = false;
	if (p < 0.5) {
	    invert = true;
	    p = 1 - (p * 2);
	} else {
	    p = (p * 2) - 1;
	}
	if (p < 1 / 2.75) {
	    p = 7.5625 * p * p;
	} else if (p < 2 / 2.75) {
	    p -= 1.5/ 2.75;
	    p = 7.5625 * (p) * p + .75;
	} else if (p < 2.5 / 2.75) {
	    p -= 2.25/ 2.75;
	    p = 7.5625 * (p) * p + .9375;
	} else {
	    p -= 2.625/ 2.75;
	    p = 7.5625 * (p) * p + .984375;
	}
	if (invert) {
	    return (1 - p) * 0.5;
	}
	return p * 0.5 + 0.5;



}
