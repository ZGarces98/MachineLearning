/// @description Disable "visible" to turn off debug info

if (visible) {
	draw_set_font(webgl_enabled ? 0 : -1);
	tl_draw_debug(5, 5); 
	//tl_draw_tweenline("seconds", 5, 5, (room_width - 10), 20);
}




