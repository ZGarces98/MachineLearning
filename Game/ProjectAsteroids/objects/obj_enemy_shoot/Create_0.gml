/// @description Settings

// Inherit the parent event
event_inherited();

#region Settings

shootTimer = 5; 
timer = shootTimer*0.9;

image_angle = point_direction(x,y,room_width/2,room_height/2) + random_range(-45,45);

#endregion

