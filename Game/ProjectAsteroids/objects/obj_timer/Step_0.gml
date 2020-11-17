/// @description Show the timer

// Reduce the time
if(global.gameTimer >= 0) {
	if(timer >= 1) {
		timer = 0;
		global.gameTimer--;
	}
	else {
		timer += global.dt_steady;	
	}
}

if(global.gameTimer < 0) ml_genSplit();

// Clamp
global.gameTimer = clamp(global.gameTimer, -1, 99);