/// @description Settings

/*

Used to change the game settings of everything.
Used to change the neural network of everything else.

*/

#region Enums

	#region Activations 
	
	enum HIDDENA {
		sigmoid,
		leakyrelu,
		swish,
		size
	}

	enum OUTPUTA {
		sigmoid,
		softPlus,
		softMax,
		size
	}

	#endregion
	
	#region Game Styles
	
	// Does death kill their teammate?
	enum GAMETYPE {
		single,
		team,
		size
	}
	
	// Should they spawn in pairs?
	enum SPAWNTYPE {
		shoot,
		shield,
		both,
		size
	}
	
	#endregion
	
	#region Data Scaling
	
	enum DATASCALE {
		normal,
		raw,
		size
	}
	
	#endregion

#endregion

#region Settings

	global.totalTeams = 4;                // How many pairs of bots on screen
	global.gameType   = GAMETYPE.team;    // Whether teammates die too
	global.spawnType  = SPAWNTYPE.both;   // Should they spawn in pairs? 
	global.dataScale  = DATASCALE.normal; // Should you normalize the input before ff?

	#region Debug Keys
	
	keybindLine  = ord("Z");
	keybindScore = ord("X");
	keybindLeft  = ord("A");
	keybindTimer = ord("S");
	
	#endregion

	#region Machine Learning
	
	global.hiddenDepth  = 1;  // How many hidden layers there should be
	global.hiddenHeight = 15; // Height of hidden layers
	global.weightRange  = 10;  // Range for the weights
	global.biasRange    = 10;  // Range of the bias
	
	// Activations
	global.hiddenActivation = HIDDENA.swish;
	global.outputActivation = OUTPUTA.softPlus;
	
	#endregion

#endregion

#region Essentials

// Needed
global.currentTeams = global.totalTeams; // How many teams are alive 
if(global.gameType == GAMETYPE.single and global.spawnType == SPAWNTYPE.both) 
	global.currentTeams *= 2;

global.minTeam = 1; // The minimum team count for gensplit
if(global.totalTeams == 1) global.minTeam = 0;
global.generation = 1; // What generation is this

// Best
global.bestTime = 0;
global.bestGeneration = 1;

// Debug
global.debugLines     = false; // Show the lines
global.debugScore     = false; // Show the scoring of each
global.debugLeftPanel = true; // Show the left panel
global.debugTimer     = true; // Show the timer

// Visuals
global.selectedPlayer = noone;

#endregion