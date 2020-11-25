/// @description Destroy asteroid and self

if(instance_exists(follow)) {
	follow.mlPoints += 20;	
}
instance_destroy(other);
instance_destroy();