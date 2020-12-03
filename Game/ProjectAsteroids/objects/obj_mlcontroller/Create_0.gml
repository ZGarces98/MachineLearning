/// @description Make a neural net

#region Enums
enum INPUT {
	
	xx,
	yy,
	
	angle,
	
	r,
	dr,
	d,
	dl,
	l,
	ul,
	u,
	ur,
	
	size
}

enum OUTPUT {
	move,
	left,
	right,
	size
}
#endregion

ml_initialize();

#region Essentials
	
team = noone;
botType = noone;
	
#endregion