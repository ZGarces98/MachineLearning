/// @description Settings

#region Essentials
global.pause = false;     // Stop the game
lastPause = !global.pause; // Used to check pause state
#endregion

#region Tweens
show_y = room_height - 200;
hide_y = room_height + 200;
tween_y = hide_y;
#endregion