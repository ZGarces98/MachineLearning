/// @function SSR(targetArray, outputArray);
/// @param targetArray - The output array to return SSR
/// @param outputArray - The target array to compare it to

function SSR(targetArray, outputArray) {

var outputSize = array_length(outputArray);
var total = 0;
for(var i = 0; i < outputSize; i++) {
	total += power((outputArray[i] - targetArray[i]), 2);
}

return total;

}