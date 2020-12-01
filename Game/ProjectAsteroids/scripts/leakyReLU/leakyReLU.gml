/// @description Leaky ReLU activation function
/// @param x

function leakyReLU(argument0){
	return max(0.01*argument0,argument0);
}