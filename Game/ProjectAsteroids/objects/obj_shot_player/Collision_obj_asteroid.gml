/// @description Destroy asteroid and self

if(instance_exists(follow)) {
	follow.mlPoints++;	
}
instance_destroy(other);
instance_destroy();