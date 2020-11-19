// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ml_genSplit(){
	
	// Choose the index number
	if(global.totalTeams > 2) {
		var parentShoot1 = instance_find(obj_player_shoot,0);
		var parentShoot2 = instance_find(obj_player_shoot,1);
		var parentShield1 = instance_find(obj_player_shield,0);
		var parentShield2 = instance_find(obj_player_shield,1);
	}
	else {
		var parentShoot1 = instance_find(obj_player_shoot,0);
		var parentShoot2 = instance_find(obj_player_shoot,0);
		var parentShield1 = instance_find(obj_player_shield,0);
		var parentShield2 = instance_find(obj_player_shield,0);
	}
	
	
	var mutationRate = 1;
	
	// Spawn the Children
	with(obj_inputController) {
		for(var t = 0; t < global.totalTeams; t++) {
	
			// Spawn bots
			var randOffset = random_range(-posOffset,posOffset);
			slot[t,PLAYERTYPE.shoot]  = instance_create_layer(room_width/2+randOffset,room_height/2+randOffset, "Players", obj_player_shoot);	
			slot[t,PLAYERTYPE.shield] = instance_create_layer(room_width/2+randOffset,room_height/2+randOffset, "Players", obj_player_shield);
	
			// Set teams and ml controller
			with(slot[t,PLAYERTYPE.shoot]) {
				image_angle = random_range(0,360);
				with(mlController) {
					
					team = t;
					botType = PLAYERTYPE.shoot;
					
					// BIAS
					
					//Parent 1
					var start = choose(0,1);
					for(var b = start; b <= hiddenDepth; b += 2) {
						if(random(100) > mutationRate) {
							bias[b] = parentShoot1.mlController.bias[b]; // Bias Number
						}
						else {
							bias[b] = random_range(-biasRange, biasRange); // Bias Number
						}
					}
					
					// Parent 2
					start = start == 1 ? 0 : 1;
					for(var b = start; b <= hiddenDepth; b += 2) {
						if(random(100) > mutationRate) {
							bias[b] = parentShoot2.mlController.bias[b]; // Bias Number
						}
						else {
							bias[b] = random_range(-biasRange, biasRange); // Bias Number
						}
					}
					
	
					// HIDDEN
					
					// parent 2
					var start = choose(0,1);
					for(var d = 0; d < hiddenDepth; d++) {
						for(var h = start; h < hiddenHeight; h += 2) {
							for(var i = 0; i < INPUT.size; i++) {
								if(random(100) > 5) {
									hiddenWeight[d][h][i] = parentShoot1.mlController.hiddenWeight[d][h][i];
								}
								else {
									hiddenWeight[d][h][i] = random_range(-weightRange, weightRange);
								}
							}
						}
					}
					
					// Parent 2
					start = start == 1 ? 0 : 1;
					for(var d = 0; d < hiddenDepth; d++) {
						for(var h = start; h < hiddenHeight; h += 2) {
							for(var i = 0; i < INPUT.size; i++) {
								if(random(100) > 5) {
									hiddenWeight[d][h][i] = parentShoot2.mlController.hiddenWeight[d][h][i];
								}
								else {
									hiddenWeight[d][h][i] = random_range(-weightRange, weightRange);
								}
							}
						}
					}
	
					// OUTPUT
					
					// Parent 1
					var start = choose(0,1);
					for(var o = 0; o < OUTPUT.size; o++) { 
						output[o] = 0;
						for(var w = start; w < hiddenHeight; w += 2) {
							if(random(100) > 5) {
								outputWeights[o][w] = parentShoot1.mlController.outputWeights[o][w];	
							}
							else {
								outputWeights[o][w] = random_range(-weightRange, weightRange);	
							}
						}
					}
					
					// Parent 2
					start = start == 1 ? 0 : 1;
					for(var o = 0; o < OUTPUT.size; o++) { 
						output[o] = 0;
						for(var w = start; w < hiddenHeight; w += 2) {
							if(random(100) > 5) {
								outputWeights[o][w] = parentShoot2.mlController.outputWeights[o][w];	
							}
							else {
								outputWeights[o][w] = random_range(-weightRange, weightRange);	
							}
						}
					}
					
				}
			}
			with(slot[t,PLAYERTYPE.shield]) {
				
				image_angle = random_range(0,360);
				
				with(mlController) {
					team = t;
					botType = PLAYERTYPE.shield;
					
					// BIAS
					
					//Parent 1
					var start = choose(0,1);
					for(var b = start; b <= hiddenDepth; b += 2) {
						if(random(100) > mutationRate) {
							bias[b] = parentShield1.mlController.bias[b]; // Bias Number
						}
						else {
							bias[b] = random_range(-biasRange, biasRange); // Bias Number
						}
					}
					
					// Parent 2
					start = start == 1 ? 0 : 1;
					for(var b = start; b <= hiddenDepth; b += 2) {
						if(random(100) > mutationRate) {
							bias[b] = parentShield2.mlController.bias[b]; // Bias Number
						}
						else {
							bias[b] = random_range(-biasRange, biasRange); // Bias Number
						}
					}
					
	
					// HIDDEN
					
					// parent 2
					var start = choose(0,1);
					for(var d = 0; d < hiddenDepth; d++) {
						for(var h = start; h < hiddenHeight; h += 2) {
							for(var i = 0; i < INPUT.size; i++) {
								if(random(100) > 5) {
									hiddenWeight[d][h][i] = parentShield1.mlController.hiddenWeight[d][h][i];
								}
								else {
									hiddenWeight[d][h][i] = random_range(-weightRange, weightRange);
								}
							}
						}
					}
					
					// Parent 2
					start = start == 1 ? 0 : 1;
					for(var d = 0; d < hiddenDepth; d++) {
						for(var h = start; h < hiddenHeight; h += 2) {
							for(var i = 0; i < INPUT.size; i++) {
								if(random(100) > 5) {
									hiddenWeight[d][h][i] = parentShield2.mlController.hiddenWeight[d][h][i];
								}
								else {
									hiddenWeight[d][h][i] = random_range(-weightRange, weightRange);
								}
							}
						}
					}
	
					// OUTPUT
					
					// Parent 1
					var start = choose(0,1);
					for(var o = 0; o < OUTPUT.size; o++) { 
						output[o] = 0;
						for(var w = start; w < hiddenHeight; w += 2) {
							if(random(100) > 5) {
								outputWeights[o][w] = parentShield1.mlController.outputWeights[o][w];	
							}
							else {
								outputWeights[o][w] = random_range(-weightRange, weightRange);	
							}
						}
					}
					
					// Parent 2
					start = start == 1 ? 0 : 1;
					for(var o = 0; o < OUTPUT.size; o++) { 
						output[o] = 0;
						for(var w = start; w < hiddenHeight; w += 2) {
							if(random(100) > 5) {
								outputWeights[o][w] = parentShield2.mlController.outputWeights[o][w];	
							}
							else {
								outputWeights[o][w] = random_range(-weightRange, weightRange);	
							}
						}
					}
					
				}
			}
		}
	}
	
	// Delete the best
	with(parentShoot1) instance_destroy();
	with(parentShoot2) instance_destroy();
	with(parentShield1) instance_destroy();
	with(parentShield2) instance_destroy();
	
	// Delete the Asteroids and enemies
	with(obj_asteroid) instance_destroy();
	with(obj_enemy) instance_destroy();
	with(obj_shot_player) instance_destroy();
	with(obj_shot_enemy) instance_destroy();
	
	global.generation++;
	global.gameTimer = 0;
	
}