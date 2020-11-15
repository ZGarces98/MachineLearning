/// @description instance_select_filter_sort( obj_or_instance_or_array_of_them, variable_name, condition_string, condition_value, sort_variable_name , ascending);
/// @function instance_select_filter_sort
/// @param {array|instance|object} obj_or_instance_or_array_of_them - The instances, objects, or combination of them
/// @param {string} variable_name - variable name as a string (which value will be used for testing)
/// @param {string} condition_string - Condition to check for. See description for more info.
/// @param {any} condition_value - The value to compare to.
/// @param {string} sort_variable_name - The name of the variable to use for sorting the values
/// @param {boolean} [ascending=true] - If true, (the default) the values will be sorted in ascendent order
/// @returns {array} The array with the instances
function instance_select_filter_sort() {
	/**
	 * Returns an array of instances that is the combination of perform:
	 * instance_select_filter and then instance_select_sort 
	 * 
	 * For more info, please reffer to `instance_select_filter` and `instance_select_sort`
	 */

	var arr = instance_select_filter(argument[0], argument[1], argument[2], argument[3]);
	var asc = true;
	if (argument_count>5) {
	    asc = argument[5];
	}
	return instance_select_sort(arr, argument[4], asc);





}
