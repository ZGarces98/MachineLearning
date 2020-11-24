/// @description Show Neural Nets

// Draw Itself
draw_self();

#region Lines
if(global.debugLines) {
	for(var i = 0; i < 8; i++) {
		if(vision[i]) draw_set_color(c_red); else draw_set_color(c_white);
		draw_line(x,y,x+lengthdir_x(vision_range, (i*45) + image_angle), y + lengthdir_y(vision_range, (i*45)+image_angle));
	}
}
#endregion

#region Score
if(global.debugScore) {
	draw_set_color(c_orange);
	draw_text_transformed(x,y,string(mlPoints),10,10,0);
	draw_set_color(c_white);	
}
#endregion