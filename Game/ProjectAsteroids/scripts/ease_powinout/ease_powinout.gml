/// @description  ease_powinout(progress, power)
/// @function  ease_powinout
/// @param {real} progress The easing progress from 0 to 1
/// @param {real} power The power.
/// @returns {real} The output normalized value
function ease_powinout() {
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
	argument[0]+=argument[0];
	if (argument[0] < 1) {return (power(argument[0],pow))*.5;}
	argument[0]=2-argument[0];
	return 1-abs(power(argument[0],pow))*.5;



}
