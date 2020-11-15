/// @description  tween_system_get_singleton()
/// @function  tween_system_get_singleton
/// @returns {GM instance} The obj_tweenline singleton instance
function tween_system_get_singleton() {
	/**
	 * Use tween_system_get_singleton() if you need to access to the obj_tweenline for some reason.
	 * (But normally you don't need to access to it)
	 * 
	 * > **WARNING:** DO NOT ACCESS TO obj_tweenline directly!! 
	 * > Use it this function to get the index of obj_tweenline:
	 * >      var tween_controller = tween_system_get_singleton();
	 *  
	 * > **WARNING:** AND DO NOT DEACTIVATE IT!
	 * 
	 */
	if (instance_exists(obj_tweenline)){ return obj_tweenline; } 
	return instance_create_depth(-10000,-10000,0,obj_tweenline);



}
