/// @description is_tweenline(value)
/// @function is_tweenline
/// @param { any } value The tween or tweenline instance (or any other value)
/// @returns {boolean} True if the passed value is a tweenline
function is_tweenline(argument0) {
	/**
	 * Return true if `value` is a tweenline, false otherwise.
	 */
	if (is_array(argument0)) { // if the argument passed is a tweenline object (an array, it can be a tween or a tweenline)
	    if (argument0[TLANIM.TYPE] == TLTYPE.TIMELINE) { //if is a tweenline
	        return true;
	    }
	}
	return false;



}
