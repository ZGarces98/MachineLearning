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
			hidden[0][h] = leakyReLU(hidden[0,h] + bias[0]);
			
		}
		
		// Extra Hiddens
		for(var d = 1; d < global.hiddenDepth; d++) {
			for(var h = 0; h < global.hiddenHeight; h++){
				hidden[d][h] = 0; 
				for(var i = 0; i < global.hiddenHeight; i++){
				    hidden[d][h] += hidden[d-1][i]*hiddenWeight[d][h][i];
				}
        
				//Activation function
				hidden[d][h] = leakyReLU(hidden[d][h] + bias[d]);
			}
		}
		
		//Output Nodes   
	    for(var o = 0; o < OUTPUT.size; o++){
	        output[o] = 0;
	        for(var h = 0; h < global.hiddenHeight; h++){
	            output[o] += hidden[global.hiddenDepth-1][h]*outputWeights[o][h];
	        }
        
	        //Activation function
	        output[o] = sigmoid(output[o] + bias[global.hiddenDepth]);
	    }	
	}
}