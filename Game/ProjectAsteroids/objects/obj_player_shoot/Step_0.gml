/// @description Continous Shooting 

// Inherit the parent event
event_inherited();

if(timer >= shootTimer) {
	timer = 0;
	
	// Shoot
	var xx = lengthdir_x(50, image_angle);
	var yy = lengthdir_y(50, image_angle);
	var projectile = instance_create_layer(x + xx, y + yy, "Players", obj_shot_player);
	with(projectile) {
		image_angle = other.image_angle;
	}
}
else {
	timer += deltatime;	
}

if(instance_exists(obj_mlcontroller)) {
	var xx = x / room_width;
	var yy = y / room_height;
	var angle = image_angle / 360;
	
	ml_feedforward(xx,yy,angle,
			   vision[0],vision[1],vision[2],vision[3],
			   vision[4],vision[5],vision[6],vision[7]);
}
