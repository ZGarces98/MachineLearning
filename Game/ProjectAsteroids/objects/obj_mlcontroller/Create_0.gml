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

weightRange = 1;

#endregion

#region Machine Learning

	#region NN
	// Input Layer
	for(var i = 0; i < INPUT.size; i++) { 
		input[i] = 0;
	}

	// Hidden Layer
	hiddenSize = 9;
	for(var i = 0; i < hiddenSize; i++) { 
		hidden[i] = 0;
		for(var j = 0; j < INPUT.size; j++) {
			hiddenWeight[i,j] = random_range(-weightRange, weightRange);
		}
	}

	// Output Layer
	for(var i = 0; i < OUTPUT.size; i++) { 
		output[i] = 0;
		for(var j = 0; j < hiddenSize; j++) {
			outputWeights[i, j] = random_range(-weightRange, weightRange);	
		}
	}
	#endregion
	
#endregion

#region Essentials
	
team = noone;
botType = noone;
	
#endregion