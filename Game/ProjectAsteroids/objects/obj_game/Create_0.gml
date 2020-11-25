/// @description Settings

/*

Used to change the game settings of everything.
Used to change the neural network of everything else.

*/

#region Settings

	global.totalTeams = 10; // How many pairs of bots on screen

	#region Debug Keys
	
	keybindLine  = ord("Z");
	keybindScore = ord("X");
	
	#endregion

	#region Machine Learning
	
	global.hiddenDepth  = 5; // How many hidden layers there should be
	global.hiddenHeight = 9; // Height of hidden layers
	global.weightRange  = 100; // Range for the weights
	global.biasRange    = 2/INPUT.size; // Range of the bias
	
	#endregion

#endregion

#region Essentials

// Needed
global.currentTeams = global.totalTeams; // How many teams are alive 
global.generation = 1; // What generation is this

// Best
global.bestTime = 0;
global.bestGeneration = 1;

// Debug
global.debugLines = false; // Show the lines
global.debugScore = false; // Show the scoring of each

#endregion