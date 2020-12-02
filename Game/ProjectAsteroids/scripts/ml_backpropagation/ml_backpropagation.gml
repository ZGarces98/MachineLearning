/// @description Used to backpropgation
/// @param targetArray - The array to reference from

function ml_backpropagation(targetArray, learningRate){


var totalError = derivativeSSR(targetArray, output);

#region Output to Hidden

for(var o = 0; o < OUTPUT.size; o++) { 
	for(var w = 0; w < global.hiddenHeight; w++) {
		var totalDer = totalError * derivativeSoftMax(outputRaw[o]) * outputWeights[o][w];
		outputWeights[o][w] = updateFunction(outputWeights[o][w], totalDer, learningRate);
	}
}

// Output bias
var totalDerOutBias = totalError * derivativeSoftMax(outputRaw[o]);
bias[global.hiddenDepth-1] = updateFunction(bias[global.hiddenDepth-1], totalDerOutBias, learningRate);

#endregion

#region Hidden to EXTRA

for(var d = global.hiddenDepth-1; d > 1; d--) {
	for(var h = 0; h < global.hiddenHeight; h++) {
		for(var w = 0; w < global.hiddenHeight; w++) {
			var totalDer = totalError * derivativeLeakyReLU(hiddenRaw[d][w]) * hidden[d][w];
			hiddenWeight[d][h][w] = updateFunction(hiddenWeight[d][h][w], totalDer, learningRate);
		}
		var totalDerOutBias = totalError * derivativeSoftMax(hiddenRaw[d][w]);
		bias[d-1] = updateFunction(bias[d-1], totalDerOutBias, learningRate);
	}
}

#endregion

#region Hidden to Input

for(var h = 0; h < global.hiddenHeight; h++) {
	for(var w = 0; w < INPUT.size; w++) {
		var totalDer = totalError * derivativeLeakyReLU(hiddenRaw[0][w]) * hidden[0][w];
		hiddenWeight[0][h][w] = updateFunction(hiddenWeight[0][h][w], totalDer, learningRate);
	}
}

#endregion

}