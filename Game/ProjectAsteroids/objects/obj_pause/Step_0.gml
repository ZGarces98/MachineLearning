/// @description Pause the game

#region Key 
if(keyboard_check_pressed(ord("P")) or keyboard_check_pressed(vk_escape))
	global.pause = !global.pause;
#endregion

#region Pause
if(global.pause) {
	if(instance_exists(obj_SteadyDeltaTime)) {
		obj_SteadyDeltaTime.scale = 0;	
	}
}
else {
	if(instance_exists(obj_SteadyDeltaTime)) {
		obj_SteadyDeltaTime.scale = 1;	
	}	
}
#endregion

#region Tween

if(lastPause != global.pause) {
	if(lastPause) {
		tween_to(id, 0.3, ["tween_y", hide_y, "ease", ease_elasticin]);	
	}
	else {
		tween_to(id, 0.3, ["tween_y", show_y, "ease", ease_elasticin]);	
	}
}

#endregion