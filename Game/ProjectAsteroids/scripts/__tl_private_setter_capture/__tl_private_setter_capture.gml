/// @param target
/// @param prop
/// @returns The captured value, or undefined if not found or cannot be captured
function __tl_private_setter_capture(argument0, argument1) {

	var target = argument0;
	var prop = argument1;

	if (is_string(prop)) {
		if (variable_instance_exists(target, prop)) {
			return variable_instance_get(target, prop);
		} else {
			show_error("Tweenline Engine error: The property \"" + string(prop) + "\" does not exists in the target instance " + string(target) + ".", true); 
			return undefined;
		}
	} else if (is_real(prop) && script_exists(prop)) { // Custom setters && getters
		// TODO: is this optimizable? 
		var tweenlineController = tween_system_get_singleton();
		with (target) { 
			tweenlineController.__VALUE = script_execute(prop);
		}
		return tweenlineController.__VALUE;
	
	} else {
		show_error("Tweenline Engine error: The value " + string(prop) + " is an invalid property name. Make sure you have written the arguments for the vars array in order when creating your tween. ", true); 
		return undefined;	
	}


}
