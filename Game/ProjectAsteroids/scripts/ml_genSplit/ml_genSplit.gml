// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ml_genSplit(){
	
	// Choose the index number
	var selectedShoot = irandom_range(0,instance_number(obj_player_shoot)-1);
	var selectedShield = irandom_range(0,instance_number(obj_player_shield)-1);
	var bestShoot  = instance_find(obj_player_shoot,selectedShoot);
	var bestShield = instance_find(obj_player_shield,selectedShield);
	
	// Delete the others
	with(obj_player_shoot) if(id != bestShoot) instance_destroy();
	with(obj_player_shield) if(id != bestShield) instance_destroy();
	
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
					
					// Bias Node
					var start = choose(0,1);
					for(var b = start; b <= hiddenDepth; b += 2) {
						if(random(100) > 5) {
							bias[b] = bestShoot.mlController.bias[b]; // Bias Number
						}
						else {
							bias[b] = random_range(-biasRange, biasRange); // Bias Number
						}
					}
	
					// Hidden Layer
					var start = choose(0,1);
					for(var d = 0; d < hiddenDepth; d++) {
						for(var h = start; h < hiddenHeight; h += 2) {
							for(var i = 0; i < INPUT.size; i++) {
								if(random(100) > 5) {
									hiddenWeight[d][h][i] = bestShoot.mlController.hiddenWeight[d][h][i];
								}
								else {
									hiddenWeight[d][h][i] = random_range(-weightRange, weightRange);
								}
							}
						}
					}
	
					// Output Layer
					var start = choose(0,1);
					for(var o = 0; o < OUTPUT.size; o++) { 
						output[o] = 0;
						for(var w = start; w < hiddenHeight; w += 2) {
							if(random(100) > 5) {
								outputWeights[o][w] = bestShoot.mlController.outputWeights[o][w];	
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
					
					// Bias Node
					var start = choose(0,1);
					for(var b = start; b <= hiddenDepth; b += 2) {
						if(random(100) > 5) {
							bias[b] = bestShield.mlController.bias[b]; // Bias Number
						}
						else {
							bias[b] = random_range(-biasRange, biasRange); // Bias Number
						}
					}
	
					// Hidden Layer
					var start = choose(0,1);
					for(var d = 0; d < hiddenDepth; d++) {
						for(var h = start; h < hiddenHeight; h += 2) {
							for(var i = 0; i < INPUT.size; i++) {
								if(random(100) > 5) {
									hiddenWeight[d][h][i] = bestShield.mlController.hiddenWeight[d][h][i];
								}
								else {
									hiddenWeight[d][h][i] = random_range(-weightRange, weightRange);
								}
							}
						}
					}
	
					// Output Layer
					var start = choose(0,1);
					for(var o = 0; o < OUTPUT.size; o++) { 
						output[o] = 0;
						for(var w = start; w < hiddenHeight; w += 2) {
							if(random(100) > 5) {
								outputWeights[o][w] = bestShield.mlController.outputWeights[o][w];	
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
	with(bestShoot) instance_destroy();
	with(bestShield) instance_destroy();
	
	// Delete the Asteroids and enemies
	with(obj_asteroid) instance_destroy();
	with(obj_enemy) instance_destroy();
	with(obj_shot_player) instance_destroy();
	with(obj_shot_enemy) instance_destroy();
	
	global.generation++;
	global.gameTimer = 0;
	
}