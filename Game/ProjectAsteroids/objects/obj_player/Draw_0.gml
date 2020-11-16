/// @description Show Neural Nets

draw_self();
if(debug) {
	for(var i = 0; i < 8; i++) {
		if(vision[i]) draw_set_color(c_red); else draw_set_color(c_white);
		draw_line(x,y,x+lengthdir_x(vision_range, (i*45) + image_angle), y + lengthdir_y(vision_range, (i*45)+image_angle));
	}
}