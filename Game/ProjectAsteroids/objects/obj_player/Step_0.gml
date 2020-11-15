/// @description Move the player

#region Keybinds

var move = keyboard_check(vk_up);
var turn = keyboard_check(vk_right) - keyboard_check(vk_left);

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

// Collision
if(place_meeting(x,y,obj_asteroid)) {
	game_restart();
}

// Room Wrap
var spriteSize = max(sprite_width, sprite_height);
if(x < -spriteSize/2) {
	x = room_width + (spriteSize/2);
}
if(x > room_width + (spriteSize/2)) {
	x = -(spriteSize/2);	
}
if(y < -(spriteSize/2)) {
	y = room_height + (spriteSize/2);
}
if(y > room_height + (spriteSize/2)) {
	y = -(spriteSize/2);	
}

vel_x += delta_accel_x;
vel_y += delta_accel_y;

#endregion

#region Damping

vel_x = deltalerp(vel_x, 0, fric, deltatime * 60);
vel_y = deltalerp(vel_y, 0, fric, deltatime * 60);

#endregion


