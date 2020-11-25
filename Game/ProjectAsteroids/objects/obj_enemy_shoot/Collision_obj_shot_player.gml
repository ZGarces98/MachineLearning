/// @description Destory and get points

if(instance_exists(other.follow)) {
	other.follow.mlPoints += 10;
}
instance_destroy();
instance_destroy(other);