/// @description Display

if(global.pause) {
	if(display != DISPLAY.none) {
		if(instance_exists(obj_ui_values)) {
			
			var xSize = 2;
			var ySize = 2;
			
			draw_set_halign(fa_left);
			draw_set_valign(fa_middle);
			draw_set_color(c_maroon);
			switch(display) {
				case DISPLAY.totalteams:
				draw_text_transformed(x,y,"Total Teams: " + string(obj_ui_values.teams),xSize,ySize,0);
				break;
				case DISPLAY.minteams:
				draw_text_transformed(x,y,"Min Teams: " + string(obj_ui_values.minTeams),xSize,ySize,0);
				break;
				case DISPLAY.hiddendepth:
				draw_text_transformed(x,y,"NN Depth: " + string(obj_ui_values.newDepth),xSize,ySize,0);
				break;
				case DISPLAY.hiddenHeight:
				draw_text_transformed(x,y,"NN Height: " + string(obj_ui_values.newHeight),xSize,ySize,0);
				break;
				case DISPLAY.weights:
				draw_text_transformed(x,y,"NN Weight: " + string(obj_ui_values.newWeight),xSize,ySize,0);
				break;
				case DISPLAY.bias:
				draw_text_transformed(x,y,"NN Bias: " + string(obj_ui_values.newBias),xSize,ySize,0);
				break;
			}
			draw_set_color(c_white);
		}
	}
}

