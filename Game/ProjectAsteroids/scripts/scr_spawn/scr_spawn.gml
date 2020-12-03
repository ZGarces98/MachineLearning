/// @function scr_spawn();
/// @description Used to spawn new agents

function scr_spawn(){

	for(var t = 0; t < global.totalTeams; t++) {
	
		#region Spawn Shooters
		
		if(global.spawnType != SPAWNTYPE.shield) {
			var randOffsetXX = random_range(-posOffset,posOffset);
			var randOffsetYY = random_range(-posOffset,posOffset);
			slot[t,PLAYERTYPE.shoot]  = instance_create_layer(room_width/2+randOffsetXX,room_height/2+randOffsetYY, "Players", obj_player_shoot);	
		}
		else {
			slot[t,PLAYERTYPE.shoot] = noone;
		}
		
		#endregion
		
		#region Spawn Shields
		
		if(global.spawnType != SPAWNTYPE.shoot) {
			var randOffsetXX = random_range(-posOffset,posOffset);
			var randOffsetYY = random_range(-posOffset,posOffset);
			slot[t,PLAYERTYPE.shield] = instance_create_layer(room_width/2+randOffsetXX,room_height/2+randOffsetYY, "Players", obj_player_shield);
		}
		else {
			slot[t,PLAYERTYPE.shield] = noone;
		}
	
		#endregion
	
		#region Set Controllers
		
		// Shooters 
		if(global.spawnType != SPAWNTYPE.shield) {
			with(slot[t,PLAYERTYPE.shoot]) {
				image_angle = random_range(0,360);
				with(mlController) {
					team = t;
					botType = PLAYERTYPE.shoot;
				}
			}
		}
		
		// Shields
		if(global.spawnType != SPAWNTYPE.shoot) {
			with(slot[t,PLAYERTYPE.shield]) {
				image_angle = random_range(0,360);
				with(mlController) {
					team = t;
					botType = PLAYERTYPE.shield;
				}
			}
		}
		
		#endregion
		
	}

}