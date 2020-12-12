/// @description Click

if(global.pause) {
	if(action != BUTTON.none) {
		switch(action) {
		
			// Teams
			case BUTTON.increaseTeams:
				obj_ui_values.teams++;
				break;
			case BUTTON.decreaseTeams:
				obj_ui_values.teams--;
				break;
			
			// Min Teams
			case BUTTON.increaseMin:
				obj_ui_values.minTeams++;
				break;
			case BUTTON.decreaseMin:
				obj_ui_values.minTeams--;
				break;
		
			// Depth
			case BUTTON.increaseDepth:
				obj_ui_values.newDepth++;
				break;
			case BUTTON.decreaseDepth:
				obj_ui_values.newDepth--; 
				break;
		
			// Height
			case BUTTON.increaseHeight:
				obj_ui_values.newHeight++;
				break;
			case BUTTON.decreaseHeight:
				obj_ui_values.newHeight--;
				break;
		
			// Weight
			case BUTTON.increaseWeight:
				obj_ui_values.newWeight++;
				break;
			case BUTTON.decreaseWeight:
				obj_ui_values.newWeight--;
				break;
		
			// Bias
			case BUTTON.increaseBias:
				obj_ui_values.newBias++;
				break;
			case BUTTON.decreaseBias:
				obj_ui_values.newBias--;
				break;
			
			// Hidden Activation
			case BUTTON.increaseHiddenActivation:
				obj_ui_values.newHiddenActivation++;
				break;
			case BUTTON.decreaseHiddenActivation:
				obj_ui_values.newHiddenActivation--;
				break;
			
			// Output Activation 
			case BUTTON.increaseOutputActivation:
				obj_ui_values.newOutputActivation++;
				break;
			case BUTTON.decreaseOutputActivation:
				obj_ui_values.newOutputActivation--;
				break;
				
			// Game Type
			case BUTTON.increaseGameType:
				obj_ui_values.newGameType++;
				break;
			case BUTTON.decreaseGameType:
				obj_ui_values.newGameType--;
				break;
			
			// SpawnType
			case BUTTON.increaseSpawnType:
				obj_ui_values.newSpawnType++;
				break;
			case BUTTON.decreaseSpawnType:
				obj_ui_values.newSpawnType--;
				break;
				
			// Data Scale
			case BUTTON.increaseDataScale:
				obj_ui_values.newDataScaling++;
				break;
			case BUTTON.decreaseDataScale:
				obj_ui_values.newDataScaling--;
				break;
				
			// Reset
			case BUTTON.reset:
				ml_reset();
				break;
		
		}
		global.changed = true;
	}	
}

