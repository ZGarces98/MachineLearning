/// @function derivativeTanh(output)
/// @param output - The output of the function

function derivativeTanh(output){
	return 1 - sqr(tanh(output));
}