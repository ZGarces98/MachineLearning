/// @function derivativeSigmoid(x);
/// @param x - The output to use as the activation function.

function derivativeSigmoid(x){
	var sig = sigmoid(x);
	return sig * (1 - sig);
}