/// @function softMax(output)
/// @param output - The output of the function

function softMax(o){

	// Normalize
	var maxOutput = max(outputRaw[0], outputRaw[1], outputRaw[2]);
	
	var bottom = 0;
	for(var i = 0; i < OUTPUT.size; i++) {
		var normalValue = outputRaw[i] - maxOutput;
		bottom += exp(normalValue);
	}
	
	return exp(o - maxOutput) / bottom;

}