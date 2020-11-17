/// @description Make a neural net

#region Enums
enum INPUT {
	
	xx,
	yy,
	
	angle,
	
	r,
	dr,
	d,
	dl,
	l,
	ul,
	u,
	ur,
	
	size
}

enum OUTPUT {
	move,
	left,
	right,
	size
}
#endregion

#region Settings

hiddenDepth  = 3; // How many hidden layers there should be
hiddenHeight = 6; // Height of hidden layers
weightRange  = 2/INPUT.size; // Range for the weights
biasRange = 2/INPUT.size; // Range of the bias

#endregion

#region Machine Learning

	#region NN
	// Input Layer
	for(var i = 0; i < INPUT.size; i++) { 
		input[i] = 0;
	}
	
	// Bias Node
	for(var b = 0; b <= hiddenDepth; b++) {
		bias[b] = random_range(-biasRange, biasRange); // Bias Number
	}
	
	// Hidden Layer
	for(var d = 0; d < hiddenDepth; d++) {
		for(var h = 0; h < hiddenHeight; h++) {
			hidden[d][h] = 0;
			for(var i = 0; i < INPUT.size; i++) {
				hiddenWeight[d][h][i] = random_range(-weightRange, weightRange);
			}
		}
	}
	
	// Output Layer
	for(var o = 0; o < OUTPUT.size; o++) { 
		output[o] = 0;
		for(var w = 0; w < hiddenHeight; w++) {
			outputWeights[o, w] = random_range(-weightRange, weightRange);	
		}
	}
	
	#endregion
	
#endregion

#region Essentials
	
team = noone;
botType = noone;
	
#endregion