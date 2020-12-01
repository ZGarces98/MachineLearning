/// @function derivativeLeakyReLU(x);
/// @param x - The output to use as the activation function.

function derivativeLeakyReLU(x){
	if (x >= 0)
        return 1;
    else
        return 1.0 / 20;
}