/// @description Controls all of the players settings

#region Keys

key_move  = 0;
key_left  = 0;
key_right = 0;

vision_range = 1000;
vision[7] = false;

#endregion

#region Settings

turnSpeed    = 400;  // How fast the ship turns
acceleration = 30 * 60;
fric         = 0.05; // How fast the ship slows down

#endregion

#region Essentials

	#region Physics
	
	hsp = 0;
	vsp = 0;
	vel_x = 0;
	vel_y = 0;
	
	#endregion

	#region Deltatime
	
	deltatime = 0;
	
	#endregion
	
	#region Debug
	
	debug = true;
	
	#endregion
	
#endregion

#region Machine Learning

mlController = instance_create_depth(0,0,0,obj_mlcontroller);

#endregion