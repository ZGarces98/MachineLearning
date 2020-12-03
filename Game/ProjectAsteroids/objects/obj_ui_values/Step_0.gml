/// @description Clamps

teams     = clamp(teams,     1, 99);
minTeams  = clamp(minTeams,  0, teams-1);
newDepth  = clamp(newDepth,  1, 99);
newHeight = clamp(newHeight, 1, 99);
newWeight = clamp(newWeight, 1, 99);
newBias   = clamp(newBias,   1, 99);

// Hidden activation clamp
if(newHiddenActivation >= HIDDENA.size) newHiddenActivation = 0;
if(newHiddenActivation < 0) newHiddenActivation = HIDDENA.size - 1;

// Output activation clamp
if(newOutputActivation >= OUTPUTA.size) newOutputActivation = 0;
if(newOutputActivation < 0) newOutputActivation = OUTPUTA.size - 1;

// GameType
if(newGameType >= GAMETYPE.size) newGameType = 0;
if(newGameType < 0) newGameType = GAMETYPE.size -1;

// GameType
if(newSpawnType >= SPAWNTYPE.size) newSpawnType = 0;
if(newSpawnType < 0) newSpawnType = SPAWNTYPE.size -1;