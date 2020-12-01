/// @function softMax(output);
/// @param output - The output to use as the activation function.

function softMax(output){
	return log10(1 + exp(output));
}