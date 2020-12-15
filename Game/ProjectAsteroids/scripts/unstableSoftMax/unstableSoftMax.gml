/// @function unstableSoftMax(output)
/// @param output - The output of the function

function unstableSoftMax(o){
	
	var bottom = 0;
	for(var i = 0; i < OUTPUT.size; i++) {
		bottom += exp(outputRaw[i]);
	}
	
	return exp(o) / bottom;

}