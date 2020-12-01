/// @function derivativeSoftMax(x);
/// @param x - The output to use as the activation function.

function derivativeSoftMax(x){
	return (exp(x) / (1 + exp(x)));
}