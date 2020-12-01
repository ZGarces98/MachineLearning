/// @function updateFunction(derivativeTotal, learningRate);
/// @param oldvalue - The starting value to change from
/// @param derivativeTotal - The total derviative when backpropagating
/// @param learningRate - The learning rate

function updateFunction(oldvalue, derivativeTotal, learningRate){
	return oldvalue - (derivativeTotal - learningRate);
}