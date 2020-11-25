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
	with(shield) follow.mlPoints += 10;
	instance_destroy();
	return;
}
// Player shoot
else if(player_shoot) {
	instance_destroy();
	with(obj_inputController) {
		var team = player_shoot.mlController.team;
		with(slot[team,PLAYERTYPE.shoot]) {
			lost = true;
			mlPoints -= round((mlPoints/2));
			if(mlPoints < 0) mlPoints = 0;
		}
		with(slot[team,PLAYERTYPE.shield]) {
			lost = true;
			mlPoints -= round((mlPoints/2));
			if(mlPoints < 0) mlPoints = 0;
		}
		global.currentTeams--;
	}
}
#endregion

x += hsp;
y += vsp;

