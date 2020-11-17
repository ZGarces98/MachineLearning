/// @description Show the timer

var xx = room_width/2 + 500;
var yy = 100;

draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text_transformed(xx, yy, "Timer: " + string(global.gameTimer), 5, 5, image_angle);