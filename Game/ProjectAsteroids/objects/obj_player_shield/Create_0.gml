/// @description Shield

// Inherit the parent event
event_inherited();

// Create a shield that follows the player
shieldID = instance_create_layer(x,y,"Players",obj_shield);
with(shieldID) follow = other.id;	

