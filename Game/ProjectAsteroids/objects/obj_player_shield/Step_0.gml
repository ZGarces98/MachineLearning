/// @description ML

if(lost) {
	if(instance_exists(shieldID)) instance_destroy(shieldID);
	return;
}

// Inherit the parent event
event_inherited();

#region Vision

// Loop through every angle
for(var i = 0; i < 360; i++) {
	
	vision[i] = 0;
	
	vision_xx = lengthdir_x(vision_range, (i*45)+image_angle);
	vision_yy = lengthdir_y(vision_range,(i*45)+image_angle);
		
	var touchAsteroid = collision_line(x,y,x+vision_xx,y+vision_yy,obj_asteroid,false,true);
	if(touchAsteroid) {
		vision[i] = 1;
	}
	else {
		var touchBullet = collision_line(x,y,x+vision_xx,y+vision_yy,obj_shot_enemy,false,true);
		if(touchBullet) vision[i] = 2;
	}
	
	if(global.dataScale == DATASCALE.normal) {
		vision[i] = vision[i] / 2;	
	}
	
}

#endregion

#region ML Feed Forward 
if(instance_exists(mlController)) {
	
	if(global.dataScale == DATASCALE.normal) {
		var xx    = x / room_width;
		var yy    = y / room_height;
		var angle = image_angle / 360;
	
		ml_feedforward(xx,yy,angle,
				   vision[0],vision[1],vision[2],vision[3],
				   vision[4],vision[5],vision[6],vision[7]);
	}
	else {
		ml_feedforward(x,y,image_angle,
				   vision[0],vision[1],vision[2],vision[3],
				   vision[4],vision[5],vision[6],vision[7]);
	}	
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

