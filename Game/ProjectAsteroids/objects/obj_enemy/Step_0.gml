/// @description Move the player

#region Keybinds

var move = 1;
var turn = 0;	

if(instance_exists(obj_player_shoot)) {
	
	var closestID = instance_find(obj_player_shoot, 0);
	var shootCount = instance_number(obj_player_shoot);
	for(var i = 1; i < shootCount; i++) {
		with(instance_find(obj_player_shoot, i)) {
			if(!lost) {
				with(other.id) {
					if(distance_to_object(other.id) < distance_to_object(closestID)) {
						closestID = instance_find(obj_player_shoot, i);	
					}
				}
			}
		}
	}
	
	with(closestID) {
		turn = sign(-angle_difference(image_angle, point_direction(x,y,other.x,other.y)));
	}
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



