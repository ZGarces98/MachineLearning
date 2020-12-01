/// @description Used to backpropgation
/// @param targetArray - The array to reference from

function ml_backpropagation(targetArray, learningRate){


var totalError = derivativeSSR(targetArray, output);

#region Output to Hidden

for(var o = 0; o < OUTPUT.size; o++) { 
	for(var w = 0; w < global.hiddenHeight; w++) {
		var totalDer = totalError * outputWeights[o][w];
		outputWeights[o][w] = updateFunction(outputWeights[o][w], totalDer, learningRate);
	}
}

// Output bias
bias[global.hiddenDepth-1] = updateFunction(bias[global.hiddenDepth-1], totalError, learningRate);

#endregion

#region Hidden to EXTRA

for(var d = global.hiddenDepth-1; d > 1; d--) {
	for(var h = 0; h < global.hiddenHeight; h++) {
		for(var w = 0; w < global.hiddenHeight; w++) {
			
			if(d == global.hiddenDepth-1) {
				hiddenWeight[d][h][w] = derivativeLeakyReLU(hidden[d][h][w]);
			}
			else {
					
			}
			
		}
	}
}

#endregion

#region Hidden to Input

#endregion

}