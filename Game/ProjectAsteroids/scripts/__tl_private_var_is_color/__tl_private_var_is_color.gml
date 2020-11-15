/// @description  __tl_private_var_is_color(var_name)
/// @function  __tl_private_var_is_color
/// @param var_name
function __tl_private_var_is_color(argument0) {
	/*

	    THIS FUNCTION IS PRIVATE, SO DO NOT USE IT!!! 

	   __________

	THIS COMMENTS ARE FOR MY (I'm the tweenline developer) USE ONLY. SO DON'T USE THIS FUNCTION!!    
       
	   Description: 
	        Detects if a VAR name is a colour. If the variable string name 
	        has "color", "blend" or "colour" in it, then is a color.
        
	*/

	if (!is_string(argument0)) {return false;}

	var var_name = string_lower(argument0);

	if (string_pos("blend",var_name)==0) {
	    if (string_pos("color",var_name)==0) {
	        if (string_pos("colour",var_name)==0) {
	            return false; // var is NOT a color var
	        }
	    }
	}
	return true;




}
