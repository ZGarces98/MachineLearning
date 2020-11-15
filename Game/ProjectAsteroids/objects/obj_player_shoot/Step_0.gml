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

