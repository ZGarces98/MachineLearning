/// @description tween_system_add_alias( alias, variable_name_or_array_or_variables )
/// @function tween_system_add_alias
/// @param {string} alias The short or aliased variable name (Example: "alpha")
/// @param {string | array of strings} variable_name_or_array_or_variables The name of the variable (or array of variables) to alias to. If you use multiple variables, The first variable is used for getting the value. 
function tween_system_add_alias(argument0, argument1) {
	/**
	 * Add an alias to a variable to use on the VARS parameter on the tween and tweenline creation
	 * functions. 
	 * 
	 * Tweenline Engine defines some default aliases:
	 *
	 * - ``"blend"` for `"image_blend"`
	 * - `"alpha"` for `"image_alpha"`
	 * - `"angle"` for `"image_angle"`
	 * - `"scale"` for both `"image_xscale"` and `"image_yscale"`
	 * - `"xscale"` for `"image_xscale"`
	 * - `"yscale"` for `"image_yscale"`
	 * - `"blend"` for `"image_blend"`
	 *  
	 * @example
	 * // Add an alias for blend (it's included by default, so you dont really need to add it)
	 * tween_system_add_alias("blend", "image_blend");
	 * // Now, you can create a tween like this:
	 * tween_to(id, 0.4, ["blend", 0.5]);
	 *
	 * @example
	 * // Add an alias for scale (it's included by default, so you dont really need to add it)
	 * tween_system_add_alias("scale", ["image_xscale", "image_yscale"]);
	 * // Now, you can create a tween like this:
	 * tween_to(id, 0.4, ["scale", 0.5]);
	 *
	 */


	global._tw_SETTERS[? argument0] = argument1;


}
