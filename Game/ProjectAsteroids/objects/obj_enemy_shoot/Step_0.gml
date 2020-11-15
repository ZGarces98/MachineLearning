/// @description Shoot projectile

// Inherit the parent event
event_inherited();

if(timer >= shootTimer) {
	timer = 0;
	
	// Shoot
	var xx = lengthdir_x(50, image_angle);
	var yy = lengthdir_y(50, image_angle);
	var projectile = instance_create_layer(x + xx, y + yy, "Enemies", obj_shot_enemy);
	with(projectile) {
		image_angle = other.image_angle;
	}
	
}
else {
	timer += global.dt_steady;	
}

