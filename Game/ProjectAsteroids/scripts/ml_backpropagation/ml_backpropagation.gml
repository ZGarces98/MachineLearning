/// @description Used to backpropgation
/// @param targetArray - The array to reference from

function ml_backpropagation(targetArray, learningRate){

var totalError = derivativeSSR(targetArray, output);

#region Output to Hidden

for(var o = 0; o < OUTPUT.size; o++) { 
	for(var w = 0; w < global.hiddenHeight; w++) {
		
		var totalDer = 0;
		
		switch(global.outputActivation) {
			case OUTPUTA.softPlus:
				totalDer = totalError * derivativeSoftPlus(outputRaw[o]) * outputWeights[o][w];
				break;
			case OUTPUTA.sigmoid:
				totalDer = totalError * derivativeSigmoid(outputRaw[o]) * outputWeights[o][w];
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
		totalDerOutBias += totalError * derivativeSoftPlus(outputRaw[o]);
		break;
	case OUTPUTA.sigmoid:
		totalDerOutBias += totalError * derivativeSigmoid(outputRaw[o]);
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
			
			var totalDer = 0;
			switch(global.hiddenActivation) {
				case HIDDENA.leakyrelu:
					totalDer = totalError * derivativeLeakyReLU(hiddenRaw[d][h]) * hidden[d][h];
					break;
				case HIDDENA.sigmoid:
					totalDer = totalError * derivativeSigmoid(hiddenRaw[d][h]) * hidden[d][h];
					break;
			}
			hiddenWeight[d][h][w] = updateFunction(hiddenWeight[d][h][w], totalDer, learningRate);
		}
		
		switch(global.hiddenActivation) {
			case HIDDENA.leakyrelu:	
				totalDerOutBias += totalError * derivativeLeakyReLU(hiddenRaw[d][h]);
				break;
			case HIDDENA.sigmoid:	
				totalDerOutBias += totalError * derivativeSigmoid(hiddenRaw[d][h]);
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
		
		var totalDer = 0;
		switch(global.hiddenActivation) {
			case HIDDENA.leakyrelu:	
				totalDer = totalError * derivativeLeakyReLU(hiddenRaw[0][h]) * hidden[0][h];
				break;
			case HIDDENA.sigmoid:
				totalDer = totalError * derivativeSigmoid(hiddenRaw[0][h]) * hidden[0][h];
				break;
		}
		
		hiddenWeight[0][h][w] = updateFunction(hiddenWeight[0][h][w], totalDer, learningRate);
	}
}

#endregion

}