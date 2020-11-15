/// @description Controls all of the players settings

#region Settings

turnSpeed    = 40;  // How fast the ship turns
acceleration = 10 * 60;
fric         = 0.05; // How fast the ship slows down

lifeSpan = 5;
lifeTimer = 0;

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
	
#endregion