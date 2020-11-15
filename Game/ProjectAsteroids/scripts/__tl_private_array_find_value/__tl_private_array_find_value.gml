/// @description  __tl_private_array_find_value(array, key)
/// @function  __tl_private_array_find_value
/// @param array
/// @param  key
function __tl_private_array_find_value(argument0, argument1) {
	/*

	    THIS FUNCTION IS PRIVATE, SO DO NOT USE IT!!! 

	   __________

	THIS COMMENTS ARE FOR MY (I'm the tweenline developer) USE ONLY. SO DON'T USE THIS FUNCTION!!    
       
	   Description: 
	        It's like ds_map_find_value(list, key) but with arrays ussed 
	        as maps. (Even indexes used as key and odd indexes used as values.)
        
        
	*/

	var size = array_length_1d(argument0)-1;
	for (var i=0; i<size; i++;) {
	    if (argument0[i++]==argument1){return argument0[i];}
	}
	return undefined;




}
