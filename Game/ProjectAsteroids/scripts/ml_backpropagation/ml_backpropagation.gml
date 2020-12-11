/// @description Used to backpropgation
/// @param targetArray - The array to reference from

function ml_backpropagation(targetArray, learningRate){

var totalError = derivativeSSR(targetArray, output);

#region Output to Hidden

for(var o = 0; o < OUTPUT.size; o++) { 
	
	for(var w = 0; w < global.hiddenHeight; w++) {
		
		var totalDer = 0;
		if(is_nan(outputWeights[o][w])) outputWeights[o][w] = random_range(-2/INPUT.size,2/INPUT.size);
		
		switch(global.outputActivation) {
			case OUTPUTA.softPlus:
				var activeDer = derivativeSoftPlus(outputRaw[o]);
				if(is_nan(activeDer)) activeDer = 0;
				totalDer = totalError * activeDer * outputWeights[o][w];
				break;
			case OUTPUTA.sigmoid:
				var activeDer = derivativeSigmoid(outputRaw[o]);
				if(is_nan(activeDer)) activeDer = 0;
				totalDer = totalError * activeDer * outputWeights[o][w];
				break;
		}
		
		outputWeights[o][w] = updateFunction(outputWeights[o][w], totalDer, learningRate);
	}
}

// Output bias
var totalDerOutBias = 0;
for(var o = 0; o < OUTPUT.size; o++) {
	switch(global.outputActivation) {
		
	case OUTPUTA.softPlus:
		var derivAct = derivativeSoftPlus(outputRaw[o]);
		if(is_nan(derivAct)) derivAct = random_range(-2/INPUT.size,2/INPUT.size);
		totalDerOutBias += totalError * derivAct;
		break;
	case OUTPUTA.sigmoid:
		var derivAct = derivativeSigmoid(outputRaw[o]);
		if(is_nan(derivAct)) derivAct = random_range(-2/INPUT.size,2/INPUT.size);
		totalDerOutBias += totalError * derivAct;
		break;
	}
	if(o == OUTPUT.size-1) {
		bias[global.hiddenDepth-1] = updateFunction(bias[global.hiddenDepth-1], totalDerOutBias, learningRate);	
	}
}

#endregion

#region Hidden to EXTRA
var totalDerOutBias = 0;
for(var d = global.hiddenDepth-1; d > 1; d--) {
	for(var h = 0; h < global.hiddenHeight; h++) {
		for(var w = 0; w < global.hiddenHeight; w++) {
			
			if(is_nan(hidden[d][h])) hidden[d][h] = random_range(-2/INPUT.size,2/INPUT.size);
			
			var totalDer = 0;
			switch(global.hiddenActivation) {
				case HIDDENA.leakyrelu:
					var derivAct = derivativeLeakyReLU(hiddenRaw[d][h]);
					if(is_nan(derivAct)) derivAct = random_range(-2/INPUT.size,2/INPUT.size);
					totalDer = totalError * derivAct * hidden[d][h];
					break;
				case HIDDENA.sigmoid:
					var derivAct = derivativeSigmoid(hiddenRaw[d][h]);
					if(is_nan(derivAct)) derivAct = random_range(-2/INPUT.size,2/INPUT.size);
					totalDer = totalError * derivAct * hidden[d][h];
					break;
			}
			hiddenWeight[d][h][w] = updateFunction(hiddenWeight[d][h][w], totalDer, learningRate);
		}
		
		switch(global.hiddenActivation) {
			case HIDDENA.leakyrelu:
				var derivAct = derivativeLeakyReLU(hiddenRaw[d][h]);
				if(is_nan(derivAct)) derivAct = random_range(-2/INPUT.size,2/INPUT.size);
				totalDerOutBias += totalError * derivAct;
				break;
			case HIDDENA.sigmoid:
			var derivAct = derivativeSigmoid(hiddenRaw[d][h]);
				if(is_nan(derivAct)) derivAct = random_range(-2/INPUT.size,2/INPUT.size);
				totalDerOutBias += totalError * derivAct;
				break;
		}
		
		if(w == global.hiddenHeight-1) {
			bias[d-1] = updateFunction(bias[d-1], totalDerOutBias, learningRate);	
		}		
	}
}

#endregion

#region Hidden to Input

for(var h = 0; h < global.hiddenHeight; h++) {
	for(var w = 0; w < INPUT.size; w++) {
		
		if(is_nan(hidden[0][h])) hidden[0][h] = random_range(-2/INPUT.size,2/INPUT.size);
		
		var totalDer = 0;
		switch(global.hiddenActivation) {
			case HIDDENA.leakyrelu:	
				var derivAct = derivativeLeakyReLU(hiddenRaw[0][h]);
				if(is_nan(derivAct)) derivAct = random_range(-2/INPUT.size,2/INPUT.size);
				totalDer = totalError * derivAct * hidden[0][h];
				break;
			case HIDDENA.sigmoid:
				var derivAct = derivativeSigmoid(hiddenRaw[0][h]);
				if(is_nan(derivAct)) derivAct = random_range(-2/INPUT.size,2/INPUT.size);
				totalDer = totalError * derivAct * hidden[0][h];
				break;
		}
		
		hiddenWeight[0][h][w] = updateFunction(hiddenWeight[0][h][w], totalDer, learningRate);
	}
}

#endregion

}