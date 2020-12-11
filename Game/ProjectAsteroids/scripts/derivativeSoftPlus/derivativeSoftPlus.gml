/// @function derivativeSoftPlus(x);
/// @param x - The output to use as the activation function.

function derivativeSoftPlus(x){
	return 1 / (1 + exp(-x));
}