/// @description Shield

// Inherit the parent event
event_inherited();

// Create a shield that follows the player
with(instance_create_layer(x,y,"Players",obj_shield)) {
	follow = other.id;	
}

