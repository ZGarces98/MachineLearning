/// @description Move

if(team != noone and botType != noone) {
	
	var move  = 0;
	var left  = 0;
	var right = 0;

	if(random(output[OUTPUT.move]) >= random_range(0,1)) move = 1;
	if(random(output[OUTPUT.left]) >= random_range(0,1)) left = 1;
	if(random(output[OUTPUT.right]) >= random_range(0,1)) right = 1;
	
	with(obj_inputController) {
		with(slot[other.team,other.botType]) {
			key_move  =  move;
			key_left  = left;
			key_right = right;
		}
	}
}

