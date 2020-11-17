/// @description Used to control characters

enum PLAYERTYPE {
	shoot,
	shield
}

#region Settings

global.totalTeams = 1; // How many pairs of bots on screen
posOffset = 80;

#endregion

#region Slots

// Initialize Array
for(var r = 0; r < global.totalTeams; r++) {
	
	// Spawn bots
	var randOffset = random_range(-posOffset,posOffset);
	slot[r,PLAYERTYPE.shoot] = instance_create_layer(room_width/2+randOffset,room_height/2+randOffset, "Players", obj_player_shoot);	
	slot[r,PLAYERTYPE.shield] = instance_create_layer(room_width/2+randOffset,room_height/2+randOffset, "Players", obj_player_shield);
	
	// Set teams and ml controller
	with(slot[r,PLAYERTYPE.shoot]) {
		image_angle = random_range(0,360);
		with(mlController) {
			team = r;
			botType = PLAYERTYPE.shoot;
		}
	}
	with(slot[r,PLAYERTYPE.shield]) {
		image_angle = random_range(0,360);
		with(mlController) {
			team = r;
			botType = PLAYERTYPE.shield;
		}
	}
}

#endregion