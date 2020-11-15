/// @description tween_system_set_default_ease( easing_function );
/// @function tween_system_set_default_ease( easing_function );
/// @param {script} easing_function The easing function to use. (Should be a game maker script) The default is `ease_quadout`.
function tween_system_set_default_ease(argument0) {
	/**
	 * Changes the default easing function. The default is `ease_quadout`
	 */

	if (script_exists(argument0)) {
	    global._tw_default_ease = argument0;
	}


}
