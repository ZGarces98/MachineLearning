/// @description Move

var move  = output[OUTPUT.move];
var left  = output[OUTPUT.left];
var right = output[OUTPUT.right];

if(random(output[OUTPUT.move]) > random(1)) move = 1;
if(random(output[OUTPUT.left]) > random(1)) left = 1;
if(random(output[OUTPUT.right]) > random(1)) right = 1;


with(obj_inputController) {
	with(slot[0,0]) {
		key_move  =  move;
		key_left  = left;
		key_right = right;
	}
}