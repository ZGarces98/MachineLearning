/// @description Kill if off screen too long

if(lifeTimer >= lifeSpan) {
	instance_destroy();
}
else {
	lifeTimer += deltatime;	
}