/// @description Restart Game when player count is lower

#region Restart Game
if(global.totalTeams > 2) {
	if(global.currentTeams <= 1) {
		ml_genSplit();		
	}
}
else if(global.totalTeams == 2) {
	if(global.currentTeams == 1) game_restart();
}
else if(global.totalTeams == 1){
	if(global.currentTeams == 0) game_restart();
}
#endregion

#region Best Score

if(global.gameTimer >= global.bestTime) {
	global.bestTime = global.gameTimer;
	global.bestGeneration = global.generation;
}

#endregion

#region Debug Keys

if(keyboard_check_pressed(keybindLine)) 
	global.debugLines = !global.debugLines;	

if(keyboard_check_pressed(keybindScore)) 
	global.debugScore = !global.debugScore;	

#endregion
