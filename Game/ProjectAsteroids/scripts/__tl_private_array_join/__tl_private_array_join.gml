/// @description  __tl_private_array_join(array1, array2)
/// @function  __tl_private_array_join
/// @param array1
/// @param  array2
function __tl_private_array_join(argument0, argument1) {
	/*

	    THIS FUNCTION IS PRIVATE, SO DO NOT USE IT!!! 

	   __________

	THIS COMMENTS ARE FOR MY (I'm the tweenline developer) USE ONLY. SO DON'T USE THIS FUNCTION!!    
       
	   Description: 
	        It's like ds_map_find_value(list, key) but with arrays used 
	        as maps. (Even indexes used as key and odd indexes used as values.)
        
        
	*/

	var size1 = array_length_1d(argument0);
	var size2 = array_length_1d(argument1) - 1;

	for (var i=0; i<size2; i++) {
		argument0[size1 + i] = argument1[i];
	}

	return argument0;




}
