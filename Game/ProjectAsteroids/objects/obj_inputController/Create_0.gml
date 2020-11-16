/// @description Used to control characters

enum PLAYERTYPE {
	shoot,
	shield
}

#region Settings

totalBots = 1; // How many pairs of bots on screen
posOffset = 80;

#endregion

#region Slots

// Initialize Array
for(var r = 0; r < totalBots; r++) {
	slot[r,0] = instance_create_layer(room_width/2,room_height/2 - posOffset, "Players", obj_player_shoot);	
	slot[r,1] = instance_create_layer(room_width/2,room_height/2 + posOffset, "Players", obj_player_shield);	
}

#endregion