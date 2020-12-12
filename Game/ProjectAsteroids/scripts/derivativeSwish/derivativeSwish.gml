/// @function derivativeSwish(output)
/// @param output - The number to output

function derivativeSwish(output){
	return output + (sigmoid(output) * (1 - output));
}