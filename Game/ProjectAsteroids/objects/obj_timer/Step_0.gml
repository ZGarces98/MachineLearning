/// @description Show the timer

// Add Time
if(timer <= 0) {
	timer = 1;
	global.gameTimer++;
}
else {
	timer -= global.dt_steady
}
