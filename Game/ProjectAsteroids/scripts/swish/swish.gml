/// @function swish(output);
/// @param output - The output to use as the activation function.
function swish(output){
	return output * sigmoid(output);
}