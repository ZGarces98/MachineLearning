/// @function tween_system_init
function tween_system_init() {
	/**
	 * > **Do not call this script manually**. It will be called automatically by the extension. 
	 */


	/////////////// PRIVATE ////// DO NOT TOUCH, DO NOT MODIFY, DO NOT ACCESS IT /////////////

	gml_pragma("global", "tween_system_init();");

	global._tw_default_useframes = false;
	global._tw_default_ease = ease_quadout; 
	global._tw_TIME = -1;
	global._tw_FRAMES = -1;
	global._tw_tl_FRAMES = undefined;
	global._tw_tl_SECONDS = undefined;
	global._tw_current_creation_tl = undefined; // current tweenline for tweenline_create and tweenline_end
	global._tw_pers_rooms_map = ds_map_create(); // Map of persistent rooms (key: room

	globalvar DELTATIME;
	DELTATIME = 0;//seconds per frame

	// Shorcuts (ALIAS) for variables. 
	global._tw_SETTERS = ds_map_create();
	global._tw_SETTERS[? "index"] = "image_index";
	global._tw_SETTERS[? "alpha"] = "image_alpha";
	global._tw_SETTERS[? "angle"] = "image_angle";
	global._tw_SETTERS[? "scale"] = ["image_xscale", "image_yscale"];
	global._tw_SETTERS[? "xscale"] = "image_xscale";
	global._tw_SETTERS[? "yscale"] = "image_yscale";
	global._tw_SETTERS[? "blend"] = "image_blend";


	// Enable or disable the lazy events. you can eneable or disable it from 
	// tween_system_lazy_events( eneable);
	global._tw_lazy_enabled = true;

	//TODOLIST RESET. It contains the events that has to be reseted in the next step 
	global._tw_lazy_todo_reset = ds_list_create(); 







}
