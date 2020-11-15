/// @description Settings

#region Settings

// Movement
moveSpeed = random_range(1,5) * 60;
moveDir = point_direction(x,y,room_width/2,room_height/2) + random_range(-45,45);

// Image
image_angle = random_range(0,360);

// Lifespan
mercyRate  = 5; // How long asteroids can last out of screen before deletion
mercyTimer = 0;

#endregion