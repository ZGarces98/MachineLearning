/// @description Draws an anti-aliased line using linear interpolation.
/// @function draw_line_width_aa(x1,y1,x2,y2,width)
/// @param x1 {real} Starting point x
/// @param y1 {real} Starting point y
/// @param x2 {real} Ending point x
/// @param y2 {real} Ending point y
/// @param width {real} Width of the line (Use 1 for a normal line)
function draw_line_width_aa(argument0, argument1, argument2, argument3, argument4) {
	/*
	Script by Fede-lasse
	source: http://gmc.yoyogames.com/index.php?showtopic=376776
	Adapted by: Ciberman.
	*/

	if (!variable_global_exists("_AA_SPRITE_LINE") || !surface_exists(global._AA_SPRITE_LINE)) {
	    var surf = surface_create(64,3);
	    surface_set_target(surf);
	    draw_clear_alpha(c_black,0);
	    draw_line_colour(-1,1,65,1,c_white,c_white);
	    surface_reset_target();
	    global._AA_SPRITE_LINE = surf;
	}

	var dist,sprwidth,dir,width,xx,yy;
	dist = (1/63)*point_distance(argument0,argument1,argument2,argument3);
	sprwidth = (argument4+2)/3;
	dir = point_direction(argument0,argument1,argument2,argument3);
	width = (argument4/2)/3;
	xx = argument0+lengthdir_x(width,dir+90);
	yy = argument1+lengthdir_y(width,dir+90);

	gpu_set_texfilter(true);
	draw_surface_ext(global._AA_SPRITE_LINE,xx,yy,dist,sprwidth,dir,draw_get_color(),draw_get_alpha());



}
