// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ml_feedforward(){
	
	with(mlController) {
		
		// Input Layer
		for(var i = 0; i < INPUT.size; i++) {
			input[i] = argument[i];
		}
		
		//Hidden Layer
		for(var i = 0; i < hiddenSize; i++){
		
		    hidden[i] = 0;
		    for(var j = 0; j < INPUT.size; j++){
		        hidden[i] += input[j]*hiddenWeight[i, j];
		    }
        
		    //Activation function
		    hidden[i] = leakyReLU(hidden[i]);
		}

		//Output Nodes   
	    for(var i = 0; i < OUTPUT.size; i++){
	        output[i] = 0;
	        for(var j = 0; j < hiddenSize; j++){
	            output[i] += hidden[j]*outputWeights[i, j];
	        }
        
	        //Activation function
	        output[i] = sigmoid(output[i]);
	    }	
	}
}