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
				
				
				case DISPLAY.hiddenActivation:
				draw_set_halign(fa_right);
				draw_set_valign(fa_middle);
				
				var value = "";
				switch(obj_ui_values.newHiddenActivation) {
					case OUTPUTA.sigmoid:
						value = "Sigmoid";
						break;
					case HIDDENA.leakyrelu:
						value = "LeakyRelu";
						break;
					case HIDDENA.swish:
						value = "Swish";
						break;
				}
				
				draw_text_transformed(x,y,"H Activation: " + value ,xSize,ySize,0);
				break;
				case DISPLAY.outputActivation:
				draw_set_halign(fa_right);
				draw_set_valign(fa_middle);
				
				var value = "";
				switch(obj_ui_values.newOutputActivation) {
					case OUTPUTA.sigmoid:
						value = "Sigmoid";
						break;
					case OUTPUTA.softPlus:
						value = "SoftPlus";
						break;
					case OUTPUTA.softMax:
						value = "SoftMax";
						break;
					case OUTPUTA.unstableSoftMax:
						value = "Unstable SoftMax";
						break;
				}
				
				draw_text_transformed(x,y,"O Activation: " + value ,xSize,ySize,0);
				break;
				
				case DISPLAY.gameType:
					var value = "";
					if(obj_ui_values.newGameType == GAMETYPE.single) value = "SINGLE";
					if(obj_ui_values.newGameType == GAMETYPE.team) value = "TEAM";
					draw_set_halign(fa_right);
					draw_set_valign(fa_middle);
					draw_text_transformed(x,y,"GameType: " + value ,xSize,ySize,0);
					break;
					
				case DISPLAY.spawnType:
					var value = "";
					if(obj_ui_values.newSpawnType == SPAWNTYPE.shoot) value = "SHOOT";
					if(obj_ui_values.newSpawnType == SPAWNTYPE.shield) value = "SHIELD";
					if(obj_ui_values.newSpawnType == SPAWNTYPE.both) value = "BOTH";
					draw_set_halign(fa_right);
					draw_set_valign(fa_middle);
					draw_text_transformed(x,y,"SpawnType: " + value ,xSize,ySize,0);
					break;
				
				
				case DISPLAY.dataScale:
					var value = "";
					if(obj_ui_values.newDataScaling == DATASCALE.normal) value = "NORMALIZED";
					if(obj_ui_values.newDataScaling == DATASCALE.raw)    value = "RAW";
					draw_set_halign(fa_right);
					draw_set_valign(fa_middle);
					draw_text_transformed(x,y,"DataScale: " + value ,xSize,ySize,0);
					break;
			}
			draw_set_color(c_white);
		}
	}
}

