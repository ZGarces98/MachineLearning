/// @function ml_reset();
/// @description This script resets the machine learning values

function ml_reset(){
	global.gameTimer = 0;
	global.generation = 0;
	global.bestGeneration = 1;
	global.bestTime = 0;
	global.changed = true;
	ml_genSplit();
}