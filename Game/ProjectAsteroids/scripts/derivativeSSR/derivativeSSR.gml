/// @function derivativeSSR(targetArray, outputArray);
/// @param targetArray - The output array to return SSR
/// @param outputArray - The target array to compare it to

function derivativeSSR(targetArray, outputArray){

var outputSize = array_length(outputArray);
var total = 0;
for(var i = 0; i < outputSize; i++) {
	total += (-2) * (outputArray[i] - targetArray[i]);
}

return total;

}