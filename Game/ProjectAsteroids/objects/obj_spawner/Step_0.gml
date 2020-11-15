/// @description Spawn

#region Asteroids

if(timerAsteroid <= 0) {
	timerAsteroid = random_range(rateAsteroidMin,rateAsteroidMax);
	
	var dir = choose(0,1,2,3);
	switch(dir) {
		case 0:
			var xx = random_range(0,room_width);
			var yy = 0;
			break;
		case 1:
			var xx = random_range(0,room_width);
			var yy = room_height;
			break;
		case 2:
			var xx = 0;
			var yy = random_range(0,room_height);
			break;
		case 3:
			var xx = room_width;
			var yy = random_range(0,room_width);
			break;
	}
	
	instance_create_layer(xx,yy,"Asteroids", obj_asteroid);
	
}
else {
	timerAsteroid -= global.dt_steady;	
}

#endregion

#region Enemies

if(timerEnemy <= 0) {
	timerEnemy = random_range(rateEnemyMin, rateEnemyMax);
	
	var dir = choose(0,1,2,3);
	switch(dir) {
		case 0:
			var xx = random_range(0,room_width);
			var yy = 0;
			break;
		case 1:
			var xx = random_range(0,room_width);
			var yy = room_height;
			break;
		case 2:
			var xx = 0;
			var yy = random_range(0,room_height);
			break;
		case 3:
			var xx = room_width;
			var yy = random_range(0,room_width);
			break;
	}
	
	instance_create_layer(xx,yy,"Enemies", obj_enemy_shoot);
	
}
else {
	timerEnemy -= global.dt_steady;	
}

#endregion
