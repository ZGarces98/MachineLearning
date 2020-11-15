/// @function instance_select_sort( obj_or_instance_or_array_of_them, variable_name [, ascending=true ]);
/// @description instance_select_sort( obj_or_instance_or_array_of_them, setter_script [, ascending=true ]);
/// @param {array|instance|object} obj_or_instance_or_array_of_them - The instances, objects, or combination of them
/// @param {string} variable_name - variable name as a string (which value will be used for testing)
/// @param {boolean} [ascending=true] - If true, (the default) the values will be sorted in ascendent order
/// @returns {array} The array with the instances
function instance_select_sort() {
	/**
	 * Returns an array with all instances specified (check below) 
	 * sorted by the propietry of the specified variable_name.
	 * You can sort ascending or descending.
	 * 
	 * For more info about obj_or_instance_or_array_of_them argument check instance_select();
	 * 
	 * Example: 
	 * In the room you have 5 instances of obj_box placed at random locations.
	 * If you call:
	 * var arr = instance_select_sort( obj_box, set_y ); 
	 * It will return an array with the 5 instances of obj_box sorted from the top
	 * box to the bottom box on the room. (using the set_y setter script)
	 * This script is useful to use it in conjunction with 
	 * tween_stagger_to/from/fromto and tweenline_stagger_to/from/fromto functions like:
	 * var arr = instance_select_sort( obj_box, set_y );
	 * tween_stagger_from( arr, 1, array("alpha",0), .5);
	 * 
	 */
	var arr = instance_select(argument[0]);

	var asc = (argument_count > 2) ? argument[2] : true;
	var p = ds_priority_create();
	var set = argument[1];

	var s = array_length_1d(arr);
	for (var i=0; i<s; i++) {
	    var inst = arr[i];
	    if (variable_instance_exists(inst, set)) {
			ds_priority_add(p, inst, variable_instance_get(inst, set));
		}
	}



	var index = 0;
	if (asc) {
	    while (!ds_priority_empty(p)) {
	        arr[index++] = ds_priority_delete_min(p);
	    }
	} else {
	    while (!ds_priority_empty(p)) {
	        arr[index++] = ds_priority_delete_max(p);
	    }
	}

	ds_priority_destroy(p);
	return arr;



}
