/// @description Make Invisible

if(global.debugLeftPanel) {
	var xx = 80;
	var yy = 100;
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	
	draw_text_transformed(xx, yy, "Current Teams: " + string(global.currentTeams), 3, 3, image_angle);
	draw_text_transformed(xx, yy+100, "Generation: " + string(global.generation), 3, 3, image_angle);
	draw_text_transformed(xx, yy+200, "Best Generation: " + string(global.bestGeneration), 3, 3, image_angle);
	draw_text_transformed(xx, yy+300, "Best Time: " + string(global.bestTime), 3, 3, image_angle);
}
