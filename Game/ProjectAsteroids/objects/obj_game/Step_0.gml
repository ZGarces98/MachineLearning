/// @description Restart Game when player count is lower

var teamCount = instance_number(obj_player) / 2;
global.currentTeams = teamCount;

if(global.totalTeams > 2) {
	if(teamCount <= round((1/4) * global.totalTeams)) {
		game_restart();		
	}
}
else if(global.totalTeams == 2) {
	if(teamCount == 1) game_restart();
}
else if(global.totalTeams == 1){
	if(teamCount == 0) game_restart();
}


