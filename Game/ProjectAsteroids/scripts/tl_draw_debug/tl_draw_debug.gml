/// @description tl_draw_debug(x, y);
/// @function tl_draw_debug(x, y);
/// @param x - The x position
/// @param y - The y position
function tl_draw_debug(argument0, argument1) {
	/**
	 * Draw standard debug info about the tween system.
	 * It shows: Total tweens, Total tweenlines, FPS, FPSreal, etc.
	 */

	//////////////// DO NOT TOUCH ///////////////

	var tweens = tween_system_count_tweens(true);
	var tweenlines = tween_system_count_tweenlines(true);

	var t = "Total tweens: " + string(tweens) + "\n";
	t+= "Total tweenlines: " + string(tweenlines) + "\n";
	t+= "FPS: " + string(fps) + "\n";
	t+= "FPSreal: " + string(fps_real) + "\n";
	var s = ds_map_size(global._tw_pers_rooms_map);
	if (s > 0) {
	    t+="Cached persistent rooms: "+string(s);
	}

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	tl_draw_text(argument0, argument1, t);


}
