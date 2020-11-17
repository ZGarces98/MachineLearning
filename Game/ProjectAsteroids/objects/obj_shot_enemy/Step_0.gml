/// @description Move shot

var deltatime = global.dt_steady;

// Next position 
hsp = lengthdir_x(shootspeed * deltatime, image_angle);
vsp = lengthdir_y(shootspeed * deltatime, image_angle);

#region Collisions

var shield = collision_line(x,y,x+hsp,y+vsp,obj_shield, false, true);
var player_shoot = collision_line(x,y,x+hsp,y+vsp,obj_player_shoot, false, true);

// Shield
if(shield) {
	x += hsp;
	y += vsp;
	instance_destroy();
	return;
}
// Player shoot
else if(player_shoot) {
	with(obj_inputController) {
		var team = player_shoot.mlController.team;
		instance_destroy(slot[team,PLAYERTYPE.shoot]);
		instance_destroy(slot[team,PLAYERTYPE.shield]);
	}
}
#endregion

x += hsp;
y += vsp;

