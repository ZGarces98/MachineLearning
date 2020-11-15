/// @description tl_draw_text(x, y, string);
/// @function tl_draw_text(x, y, string);
/// @param {real} x - The x position
/// @param {real} y - The y position
/// @param {string} string - The string to draw
function tl_draw_text(argument0, argument1, argument2) {
	/**
	 * Draws a clear text with the default drawing font with a 1 pixel outline.
	 */

	var xxx = argument0;
	var yyy = argument1;
	var t = argument2;
	var r = 1;
	var col = draw_get_color();
	draw_set_font(webgl_enabled ? 0 : -1);
	draw_set_alpha(1);
	draw_set_color(c_black);
	draw_text(xxx-r,yyy-r,t);
	draw_text(xxx-r,yyy+r,t);
	draw_text(xxx+r,yyy-r,t);
	draw_text(xxx+r,yyy+r,t);
	draw_set_color(c_white);
	draw_text(xxx,yyy,t);

	draw_set_color(col);


}
