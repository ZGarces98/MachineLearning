/// @description Restart Game when player count is lower

#region Restart Game
var teamCount = round(instance_number(obj_player) / 2);
global.currentTeams = teamCount;

if(global.totalTeams > 2) {
	if(teamCount <= 4) {
		ml_genSplit();		
	}
}
else if(global.totalTeams == 2) {
	if(teamCount == 1) game_restart();
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
