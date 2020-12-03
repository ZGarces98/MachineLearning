/// @function softPlus(output);
/// @param output - The output to use as the activation function.

function softPlus(output){
	return log10(1 + exp(output));
}