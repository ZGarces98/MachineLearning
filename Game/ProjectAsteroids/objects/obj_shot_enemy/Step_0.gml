/// @description Move shot

var deltatime = global.dt_steady;

// Next position 
hsp = lengthdir_x(shootspeed * deltatime, image_angle);
vsp = lengthdir_y(shootspeed * deltatime, image_angle);

#region Collisions
// Shield
if(collision_line(x,y,hsp,vsp,obj_shield, false, true)) {
	global.gameTimer += 5;
	x += hsp;
	y += vsp;
	instance_destroy();
	return;
}
// Player shoot
else if(collision_line(x,y,hsp,vsp,obj_player_shoot, false, true)) {
	game_restart();
}
#endregion

x += hsp;
y += vsp;

