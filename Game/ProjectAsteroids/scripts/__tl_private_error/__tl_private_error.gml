/// @description  __tl_private_error( tween, error_string); 
/// @function  __tl_private_error
/// @param {Anim} tween
/// @param {Anim} error_string
function __tl_private_error(argument0, argument1) {
	/**
	 * Shows an error in the debug console.
	 * The parameter tween is optional. You can pass undefined if the error is not in a particular tween.
	 */

	if (is_array(argument0)) {
	    show_debug_message("TWEENLINE: " + string(argument1));
	    if (is_tween(argument0)) {
	        show_debug_message(">>>> At tween: "+string(tween_get_string(argument0)));
	    }
	} else {
	    show_debug_message("TWEENLINE: "+string(argument1));
	}
	return undefined;





}
