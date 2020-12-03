/// @description Restart Game when player count is lower

#region Restart Game

if(global.currentTeams <= global.minTeam) ml_genSplit();

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

if(keyboard_check_pressed(keybindLeft)) 
	global.debugLeftPanel = !global.debugLeftPanel;
	
if(keyboard_check_pressed(keybindTimer)) 
	global.debugTimer = !global.debugTimer;

#endregion
