/// @description is_tween(value)
/// @function is_tween
/// @param { any } value The tween or tweenline instance (or any other value)
/// @returns {boolean} True if the passed value is a tween
function is_tween(argument0) {
	/**
	 * Return true if `value` is a tween, false otherwise.
	 */
	if (is_array(argument0)) { // if the argument passed is a tweenline object (an array, it can be a tween or a tweenline)
	    if (argument0[TLANIM.TYPE] == TLTYPE.TWEEN) { //if is a tween
	        return true;
	    }
	}
	return false;


}
