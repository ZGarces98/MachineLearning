/// @function softPlus(output);
/// @param output - The output for the function

function softPlus(output){
	return log10(1 + exp(-abs(output))) + max(output,0);
}