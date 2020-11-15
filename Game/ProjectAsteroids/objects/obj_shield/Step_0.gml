/// @description Position 

#region Follow it's instance
if(instance_exists(follow)) {
	image_angle = follow.image_angle;
	x = follow.x + lengthdir_x(60, follow.image_angle);
	y = follow.y + lengthdir_y(60, follow.image_angle);
}
#endregion