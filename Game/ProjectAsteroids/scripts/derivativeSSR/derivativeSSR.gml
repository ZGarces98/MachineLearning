/// @function derivativeSSR(targetArray, outputArray);
/// @param targetArray - The output array to return SSR
/// @param outputArray - The target array to compare it to

function derivativeSSR(targetArray, outputArray){

var total = 0;
for(var i = 0; i < 3; i++) {
	var predicted = outputArray[i];
	var target = targetArray[i];
	if(is_nan(predicted)) predicted = 0;
	if(is_nan(target)) target = 0;
	total += 2 * (predicted - target);
}

return total;

}