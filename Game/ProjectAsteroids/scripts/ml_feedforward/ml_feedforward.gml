// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ml_feedforward(){
	
	with(mlController) {
		
		// Input Layer
		for(var i = 0; i < INPUT.size; i++) {
			input[i] = argument[i];
		}
		
		// Input to Hidden
		for(var h = 0; h < global.hiddenHeight; h++) {
			hidden[0][h] = 0;
			for(var i = 0; i < INPUT.size; i++) {
				hidden[0][h] += input[i]*hiddenWeight[0][h][i];	
			}
			
			// Activation Function
			hiddenRaw[0][h] = hidden[0][h] + bias[0]; // Save for backpropagation
			
			switch(global.hiddenActivation) {
				case HIDDENA.leakyrelu:
					hidden[0][h] = leakyReLU(hidden[0][h] + bias[0]);
					break;
				case HIDDENA.sigmoid:
					hidden[0][h] = sigmoid(hidden[0][h] + bias[0]);
					break;
				case HIDDENA.swish:
					hidden[0][h] = swish(hidden[0][h] + bias[0]);
					break;
				case HIDDENA.tanh:
					hidden[0][h] = tanh(hidden[0][h] + bias[0]);
					break;
			}
			
		}
		
		// Extra Hiddens
		for(var d = 1; d < global.hiddenDepth; d++) {
			for(var h = 0; h < global.hiddenHeight; h++){
				hidden[d][h] = 0; 
				for(var i = 0; i < global.hiddenHeight; i++){
				    hidden[d][h] += hidden[d-1][i]*hiddenWeight[d][h][i];
				}
        
				//Activation function
				hiddenRaw[d][h] = hidden[d][h] + bias[d]; // Save for backpropagation
				
				switch(global.hiddenActivation) {
					case HIDDENA.leakyrelu:
						hidden[d][h] = leakyReLU(hidden[d][h] + bias[d]);
						break;
					case HIDDENA.sigmoid:
						hidden[d][h] = sigmoid(hidden[d][h] + bias[d]);
						break;
					case HIDDENA.swish:
						hidden[d][h] = swish(hidden[d][h] + bias[d]);
						break;
					case HIDDENA.tanh:
						hidden[d][h] = tanh(hidden[d][h] + bias[d]);
						break;
				}
				
			}
		}
		
		//Output Nodes   
	    for(var o = 0; o < OUTPUT.size; o++){
	        output[o] = 0;
	        for(var h = 0; h < global.hiddenHeight; h++){
	            output[o] += hidden[global.hiddenDepth-1][h]*outputWeights[o][h];
	        }
        
	        //Activation function
			outputRaw[o] = output[o] + bias[global.hiddenDepth]; // Save for backpropagation
			
			switch(global.outputActivation) {
				case OUTPUTA.softPlus:
					output[o] = softPlus(output[o] + bias[global.hiddenDepth]);
					break;
				case OUTPUTA.sigmoid:
					output[o] = sigmoid(output[o] + bias[global.hiddenDepth]);
					break;
			}
			
	    }
		
		// SoftMax
		
		switch(global.outputActivation) {
			case OUTPUTA.softMax:
				for(var i = 0; i < OUTPUT.size; i++) {
					output[i] = softMax(outputRaw[i]);
				}
				break;
			case OUTPUTA.unstableSoftMax:
				for(var i = 0; i < OUTPUT.size; i++) {
					output[i] = unstableSoftMax(outputRaw[i]);
				}
				break;
		}
		
	}
}