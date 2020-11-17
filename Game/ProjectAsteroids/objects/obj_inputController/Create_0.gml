/// @description Used to control characters

enum PLAYERTYPE {
	shoot,
	shield
}

#region Settings

global.totalTeams = 3; // How many pairs of bots on screen
posOffset = 80;

#endregion

#region Slots

// Initialize Array
for(var t = 0; t < global.totalTeams; t++) {
	
	// Spawn bots
	var randOffset = random_range(-posOffset,posOffset);
	slot[t,PLAYERTYPE.shoot]  = instance_create_layer(room_width/2+randOffset,room_height/2+randOffset, "Players", obj_player_shoot);	
	slot[t,PLAYERTYPE.shield] = instance_create_layer(room_width/2+randOffset,room_height/2+randOffset, "Players", obj_player_shield);
	
	// Set teams and ml controller
	with(slot[t,PLAYERTYPE.shoot]) {
		image_angle = random_range(0,360);
		with(mlController) {
			team = t;
			botType = PLAYERTYPE.shoot;
		}
	}
	with(slot[t,PLAYERTYPE.shield]) {
		image_angle = random_range(0,360);
		with(mlController) {
			team = t;
			botType = PLAYERTYPE.shield;
		}
	}
}

#endregion