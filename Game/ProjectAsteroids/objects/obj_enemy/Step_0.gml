/// @description Move the player

#region Keybinds

if(instance_exists(obj_player_shoot)) {
	var move = 1
	
	var xx = obj_player_shoot.x;
	var yy = obj_player_shoot.y;
	var turn = sign(-angle_difference(image_angle, point_direction(x,y,xx,yy)));
}
else {
	var move = 0;
	var turn = 0;	
}

image_angle += turn * turnSpeed * deltatime;

#endregion

#region Acceleration 
var move_x = lengthdir_x(move, image_angle);
var move_y = lengthdir_y(move, image_angle);

var delta_accel_x = move_x * deltatime * acceleration;
var delta_accel_y = move_y * deltatime * acceleration;
#endregion

#region Position

hsp = (vel_x * deltatime) + (0.5 * delta_accel_x * (deltatime * deltatime));
vsp = (vel_y * deltatime) + (0.5 * delta_accel_y * (deltatime * deltatime));

x += hsp;
y += vsp;

vel_x += delta_accel_x;
vel_y += delta_accel_y;

#endregion

#region Damping

vel_x = deltalerp(vel_x, 0, fric, deltatime * 60);
vel_y = deltalerp(vel_y, 0, fric, deltatime * 60);

#endregion



