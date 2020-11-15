/// @description  tween_get_string(tween)
/// @function  tween_get_string
/// @param {Tween} tween The tween
/// @returns {string} A string representation of the tween.
function tween_get_string(argument0) {
	/**
	 * Generates a string with the aproximated contructor function of the tween.
	 *
	 * > Note: This is an experimental function. Use it only for debug purposes.
	 *
	 * @example
	 * var tween = tween_to( obj_car, 2, array( "x", 300));
	 * var str = tween_get_string(tween);
	 * // output:
	 * // "tween_to( obj_car, 2, ["x", 300]);" (as a string)
	 *         
	 */

	var _t = argument0;
	var args = _t[TLANIM.DEBUGARGS]

	if (!is_array(args)) {
		return "<unknown tween>"; 	
	}

	var args_l = array_length_1d(args);
	var str = string(args[0]);

	var object = "<unknown_target>", target = _t[TLTWEEN.RAWTARGET];
	if (is_array(target)) {
		object = "[";
		for (var i = 0; i < array_length_1d(target); i++) {
			if (i != 0) { object += ", "; }
			if (instance_exists(target)) {
			    object += object_get_name((target).object_index);
			}
		}
		object += "]";
	} else {
		if (instance_exists(target)) {
			object = object_get_name((target).object_index);
		}	
	}
	var duration = string(args[2]);


	var arr = "[ ";
	var a = args[3], size = array_length_1d(a), name, name2;
	for (var i = 0; i<size; i++) {
	    if (i != 0) {
	        arr+=", ";
	    }
	    name = is_string(a[i]) ? "\"" + string(a[i]) + "\"" : script_get_name(a[i]);
	    i++;
	    if (i==size) {
	        arr+=name;
	        break;
	    }
	    name2 = (name == "\"ease\"" || name == "var_ease") ? script_get_name(a[i]) : ((is_string(a[i])) ? "\"" + string(a[i]) + "\"" : string(a[i]));
	    arr+= name+","+name2;
	}

	arr += " ]";

	if (args_l>4) {
	    arr+= ", [ ";
	    a = args[3];
	    size = array_length_1d(a);
	    for (var i = 0; i<size; i++) {
	        if (i!=0) {
	            arr += ",";
	        }
			name = is_string(a[i]) ? "\"" + string(a[i]) + "\"" : script_get_name(a[i]);
	        i++;
	        if (i == size) {
	            arr += name;
	            break;
	        }
			name2 = (name == "\"ease\"" || name == "var_ease") ? script_get_name(a[i]) : ((is_string(a[i])) ? "\"" + string(a[i]) + "\"" : string(a[i]));
	        arr+= name+","+name2;
	    }
	    arr+=" ]";
	}


	return str + "( " + object + ", " + duration + ", " + arr + ");";



}
