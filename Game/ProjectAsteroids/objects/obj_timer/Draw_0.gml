/// @description Show the timer

var xx = room_width/2;
var yy = 100;

draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text_transformed(xx, yy, string(global.gameTimer), 10, 10, image_angle);