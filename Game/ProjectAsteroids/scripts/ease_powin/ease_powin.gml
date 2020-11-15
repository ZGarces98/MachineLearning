/// @description  ease_powin(progress, power)
/// @function  ease_powin
/// @param {real} progress The easing progress from 0 to 1
/// @param {real} power The power.
/// @returns {real} The output normalized value
function ease_powin() {
	/**
	 * Do not call this script directly. For info about easings, refer to this folder documentation.
	 * Check the "easings" folder documentation to learn about how to change the easing arguments (moddifiers) 
	 */
	var pow = 6;
	if (argument_count>1) {
	    if (is_real(argument[1])) {
	        pow = argument[1];
	    }
	}
	return power(argument[0],pow);




}
