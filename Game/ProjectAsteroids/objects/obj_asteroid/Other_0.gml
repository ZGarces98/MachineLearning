/// @description Destroy Asteroid

if(mercyTimer >= mercyRate) {
	instance_destroy();
}
else {
	mercyTimer += global.dt_steady;	
} 