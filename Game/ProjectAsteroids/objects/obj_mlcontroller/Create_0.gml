/// @description Make a neural net

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

#region Initialize

// Input Layer
for(var i = 0; i < INPUT.size; i++) { 
	input[i] = 0;
}

// Hidden Layer
hiddenSize = INPUT.size + (round(2/3)*OUTPUT.size);
for(var i = 0; i < hiddenSize; i++) { 
	hidden[i] = 0;
	for(var j = 0; j < INPUT.size; j++) {
		hiddenWeight[i,j] = random_range(-1.0, 1.0);
	}
}

// Output Layer
for(var i = 0; i < OUTPUT.size; i++) { 
	output[i] = 0;
	for(var j = 0; j < hiddenSize; j++) {
		outputWeights[i, j] = random_range(-1.0, 1.0);	
	}
}

#endregion