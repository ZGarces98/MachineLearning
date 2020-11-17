/// @description Remove shield

// Inherit the parent event
event_inherited();

if(instance_exists(shieldID)) instance_destroy(shieldID);

