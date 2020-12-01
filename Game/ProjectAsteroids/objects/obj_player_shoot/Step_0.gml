/// @description Shooting

if(lost) return;

// Inherit the parent event
event_inherited();

#region Shoot Timer
if(timer >= shootTimer) {
	timer = 0;
	
	// Shoot
	var xx = lengthdir_x(50, image_angle);
	var yy = lengthdir_y(50, image_angle);
	var projectile = instance_create_layer(x + xx, y + yy, "Players", obj_shot_player);
	with(projectile) {
		follow = other.id;
		image_angle = other.image_angle;
	}
}
else {
	timer += deltatime;	
}
#endregion

#region Vision

// Loop through every angle
for(var i = 0; i < 360; i++) {
	
	vision[i] = false;
	
	var vision_xx = lengthdir_x(vision_range, (i*45)+image_angle);
	var vision_yy = lengthdir_y(vision_range,(i*45)+image_angle);
		
	var touchBullet   = collision_line(x,y,x+vision_xx,y+vision_yy,obj_shot_enemy,false,true);
	if(touchBullet) {
		vision[i] = 3;
	}
	else {
		var touchAsteroid = collision_line(x,y,x+vision_xx,y+vision_yy,obj_asteroid,false,true);
		if(touchAsteroid) {
			vision[i] = 2;
		}
		else {
			var touchEnemy = collision_line(x,y,x+vision_xx,y+vision_yy,obj_enemy,false,true);
			if(touchEnemy) vision[i] = 1;
		}		
	}
	
}

#endregion

#region ML Feed Forward
if(instance_exists(mlController)) {
	
	var xx    = x / room_width;
	var yy    = y / room_height;
	var angle = image_angle / 360;
	
	ml_feedforward(xx,yy,angle,
			   vision[0],vision[1],vision[2],vision[3],
			   vision[4],vision[5],vision[6],vision[7]);
}
#endregion

#region ML Points

// Move Reward
if(pointTimer >= pointRate) {
	if(key_move == 1) {
		pointTimer = 0;
		mlPoints++;
	}
}
else {
	pointTimer += deltatime;	
}

// Spin Penalty
if(spinTimer >= spinRate) {
	if(key_left or key_right) {
		spinTimer = 0;
		mlPoints--;
		if(mlPoints < 0) mlPoints = 0;
	}
}
else {
	spinTimer += deltatime;	
}

#endregion