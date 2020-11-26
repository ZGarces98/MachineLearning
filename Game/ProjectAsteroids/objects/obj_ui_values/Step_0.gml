/// @description Clamps

teams     = clamp(teams,     1, 99);
minTeams  = clamp(minTeams,  0, teams-1);
newDepth  = clamp(newDepth,  1, 99);
newHeight = clamp(newHeight, 1, 99);
newWeight = clamp(newWeight, 1, 99);
newBias   = clamp(newBias,   1, 99);