/// @description Destory and get points

if(instance_exists(other.follow)) {
	other.follow.mlPoints++;	
}
instance_destroy();
instance_destroy(other);