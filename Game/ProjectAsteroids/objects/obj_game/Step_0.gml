/// @description Restart Game when player count is lower

#region Restart Game
var teamCount = instance_number(obj_player) / 2;
global.currentTeams = teamCount;

if(global.totalTeams > 2) {
	if(teamCount <= round((1/4) * global.totalTeams)) {
		ml_genSplit();		
	}
}
else if(global.totalTeams == 2) {
	if(teamCount == 1) ml_genSplit();
}
else if(global.totalTeams == 1){
	if(teamCount == 0) game_restart();
}
#endregion

#region Best Score

if(global.gameTimer >= global.bestTime) {
	global.bestTime = global.gameTimer;
	global.bestGeneration = global.generation;
}

#endregion