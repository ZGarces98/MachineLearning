function __tl_private_tween_parse_rawvars(argument0, argument1) {


	var _t = argument0;
	var varsarray = argument1;
	//loop all the array indexes
	var index = 0;
	var arr = [];
	var _size = array_length_1d(varsarray) - 1;
	for (var i=0; i < _size; i++) { 
    
	    // If the passed array is: ["ease", ease_quadin, "x", 300]
	    // odd values will be "prop" and even values will be "value"
	    // in the first iteration prop="ease"; value=ease_quadin; 
	    // in the second iteration prop="x"; value=300;
	    var prop   = varsarray[i++];
	    var value  = varsarray[i];

		// if it is a reserved property name, then apply it and continue
		if (__tl_private_anim_prop_apply(_t, prop, value)) {
			continue;
		}

		if (!is_real(value)) {  // And the value is NOT a real value
			return __tl_private_error(_t, "Alert. Cannot interpolate non real value: " + string(value));
		} 

		// Check if it's an ALIAS
	
		prop = (ds_map_exists(global._tw_SETTERS, prop)) 
			? ds_map_find_value(global._tw_SETTERS, prop) 
			: prop;
	
		if (is_array(prop)) {
			var __size = array_length_1d(prop);
			for (var jj = 0; jj < __size; jj++) {
				arr[index++] = prop[jj];
				arr[index++] = value;	
			}
		} else {
			arr[index++] = prop;
			arr[index++] = value;	
		}
	
	}
	_t[@ TLTWEEN.RAWVARS] = arr;


}
