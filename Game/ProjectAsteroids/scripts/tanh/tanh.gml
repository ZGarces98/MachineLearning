/// @function tanh(output)
/// @param output - The output of the activation function

function tanh(output){
	var numerator   = exp(output) - exp(-output);
	var denominator = exp(output) + exp(-output);
	if(denominator == 0) return 0;
	return numerator / denominator;
}