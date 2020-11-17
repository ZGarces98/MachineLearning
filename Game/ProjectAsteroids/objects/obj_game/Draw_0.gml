/// @description Make Invisible

var xx = 80;
var yy = 100;

draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text_transformed(xx, yy, "Current Teams: " + string(global.currentTeams), 3, 3, image_angle);