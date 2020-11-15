/// @description  instance_select_filter( obj_or_instance_or_array_of_them, variable_name, condition_string, condition_value);
/// @function  instance_select_filter
/// @param {array|instance|object} obj_or_instance_or_array_of_them - The instances, objects, or combination of them
/// @param {string} variable_name - variable name as a string (which value will be used for testing)
/// @param {string} condition_string - Condition to check for. See description for more info.
/// @param {any} condition_value - The value to compare to.
/// @returns {array} The array with the instances
function instance_select_filter(argument0, argument1, argument2, argument3) {
	/**
	 * This will return an array of instances filtered by the specified condition. 
	 * For more info about obj_or_instance_or_array_of_them argument check instance_select();
	 *
	 * The posible values for `condition_string` can be: `">"`, `"<"`, `">="`, `"<="`, `"="`, `"=="`, `"!="`, `"<>"`
	 *     
	 * @example
	 * // if you want to select the all the obj_tree instances which 
	 * // Y position is less than 180 you can do: 
	 *
	 * var arr = instance_select_filter( obj_tree, "y", "<", 180); 
	 *
	 * // This will return an array with ALL the ids of the instances of the 
	 * // obj_tree which y position is below 180.
	 *         
	 */

	var o = argument0, setter = argument1, condition = argument2, val= argument3;

	var arr = undefined, index=0;
	var inst_arr = instance_select(o); 

	var s = array_length_1d(inst_arr);
	for (var i = 0; i < s; i++) { // for each instance

		if (variable_instance_exists(inst_arr[i], setter)) {
		    // get the value
		    var v = variable_instance_get(inst_arr[i], setter);
    
		    // test condition with refference value
		    var a = false;
		    switch(condition) {
		        case ">": a = (v > val); break;
		        case "<": a = (v < val); break;
		        case ">=": a = (v >= val); break;
		        case "<=": a = (v <= val); break;
		        case "=": a = (v = val); break;
		        case "==": a = (v == val); break;
		        case "!=": a = (v != val); break;
		        case "<>": a = (v <> val); break;
		        default: a=false;
		    }
    
		    // check for the condition
		    if (a) { 
		        // and add it to the array
		        arr[index++] = inst_arr[i];       
		    }
		}
	}


	return arr; 



}
