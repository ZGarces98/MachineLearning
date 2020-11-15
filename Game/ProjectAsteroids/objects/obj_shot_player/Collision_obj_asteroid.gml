/// @description Destroy asteroid and self

global.gameTimer += 1;
instance_destroy(other);
instance_destroy();