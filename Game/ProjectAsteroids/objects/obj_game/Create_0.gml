/// @description Settings

/*

Used to change the game settings of everything.
Used to change the neural network of everything else.

*/

#region Settings

	global.totalTeams = 4; // How many pairs of bots on screen

	#region Debug Keys
	
	keybindLine  = ord("Z");
	keybindScore = ord("X");
	keybindLeft  = ord("A");
	keybindTimer = ord("S");
	
	#endregion

	#region Machine Learning
	
	global.hiddenDepth  = 1; // How many hidden layers there should be
	global.hiddenHeight = 5; // Height of hidden layers
	global.weightRange  = 1; // Range for the weights
	global.biasRange    = 1; // Range of the bias
	
	#endregion

#endregion

#region Essentials

// Needed
global.currentTeams = global.totalTeams; // How many teams are alive 
global.minTeam = 1; // The minimum team count for gensplit
global.generation = 1; // What generation is this

// Best
global.bestTime = 0;
global.bestGeneration = 1;

// Debug
global.debugLines     = false; // Show the lines
global.debugScore     = false; // Show the scoring of each
global.debugLeftPanel = true; // Show the left panel
global.debugTimer     = true; // Show the timer

#endregion