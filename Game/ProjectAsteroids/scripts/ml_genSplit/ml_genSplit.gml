/// @description Used to check fitness, select parent, and spawn children 

function ml_genSplit(){
	
#region Fitness and Selection
	
	var parentShoot1 = noone;
	var parentShoot2 = noone;
	var parentShield1 = noone;
	var parentShield2 = noone;
	
	if(global.spawnType != SPAWNTYPE.shield) {
		#region Shoot
	
		// Total Shoot Points
		var totalPointsShoot = 0;
		var totalShoot = instance_number(obj_player_shoot);
		for(var i = 0; i < totalShoot; i++) {
			with(instance_find(obj_player_shoot, i)) {
				totalPointsShoot += mlPoints;	
			}
		}
	
		// Parent Picker 
		var shootSelected = 0;
		for(var i = 0; i < totalShoot; i++) {
			if(shootSelected < 2) {
				var chance     = random_range(0, 1);
				var shootShip  = instance_find(obj_player_shoot, i);
				var shipChance = shootShip.mlPoints / totalPointsShoot;
				if(chance < shipChance) {
					if(shootSelected == 0) {
						parentShoot1 = shootShip;
						shootSelected++;
					}
					else {
						parentShoot2 = shootShip;
						shootSelected++;
					}
				}
			}
			else {
				break;	
			}
		}
	
		// FailSafe
		if(parentShoot1 == noone) 
			parentShoot1 = instance_find(obj_player_shoot, irandom_range(0, instance_number(obj_player_shoot)-1));
		if(parentShoot2 == noone) 
			parentShoot2 = instance_find(obj_player_shoot, irandom_range(0, instance_number(obj_player_shoot)-1));
	
		#endregion	
	}
	
	if(global.spawnType != SPAWNTYPE.shoot) {
		#region Shield
	
		// Total Shield Points
		var totalPointsShield = 0;
		var totalShield = instance_number(obj_player_shield);
		for(var i = 0; i < totalShield; i++) {
			with(instance_find(obj_player_shield, i)) {
				totalPointsShield += mlPoints;	
			}
		}
	
		// Parent Picker 
		var shieldSelected = 0;
		for(var i = 0; i < totalShield; i++) {
			if(shieldSelected < 2) {
				var chance     = random_range(0, 1);
				var shieldShip  = instance_find(obj_player_shield, i);
				var shipChance = shieldShip.mlPoints / totalPointsShield;
				if(chance < shipChance) {
					if(shieldSelected == 0) {
						parentShield1 = shieldShip;
						shieldSelected++;
					}
					else {
						parentShield2 = shieldShip;
						shieldSelected++;
					}
				}
			}
			else {
				break;	
			}
		}
	
		// FailSafe
		if(parentShield1 == noone) 
			parentShield1 = instance_find(obj_player_shield, irandom_range(0, instance_number(obj_player_shield)-1));
		if(parentShield2 == noone) 
			parentShield2 = instance_find(obj_player_shield, irandom_range(0, instance_number(obj_player_shield)-1));
		
		
		
		#endregion	
	}
	
	// Remove Everything else
	with(obj_player) {
		if(id != parentShoot1 or id != parentShoot2 or id != parentShield1 or id != parentShield2) 
			instance_destroy();	
	}
	
#endregion

#region Backpropagation

var backLearningRate = 0.5;
var backpropagation = true;

if(backpropagation) {
	if(parentShoot1 != noone) {
		with(parentShoot1) {
			var closestID = instance_nearest(x,y,obj_enemy);
			with(mlController) {
				var targetArray = [1,0,0];
				with(closestID) {
					if(sign(-angle_difference(image_angle, point_direction(x,y,other.x,other.y))) > 0) {
						targetArray = [1,1,0];
					}
					else if(sign(-angle_difference(image_angle, point_direction(x,y,other.x,other.y))) < 0) {
						targetArray = [1,0,1];
					}
					else {
						targetArray = [1,0,0];
					}
				}	
				ml_backpropagation(targetArray, backLearningRate);
			}	
		}
	}

	if(parentShoot2 != noone) {
		with(parentShoot2) {
			var closestID = instance_nearest(x,y,obj_enemy);
			with(mlController) {
				var targetArray = [1,0,0];
				with(closestID) {
					if(sign(-angle_difference(image_angle, point_direction(x,y,other.x,other.y))) > 0) {
						targetArray = [1,1,0];
					}
					else if(sign(-angle_difference(image_angle, point_direction(x,y,other.x,other.y))) < 0) {
						targetArray = [1,0,1];
					}
					else {
						targetArray = [1,0,0];
					}
				}	
				ml_backpropagation(targetArray, backLearningRate);
			}	
		}
	}

	if(parentShield1 != noone) {
		with(parentShield1) {
			var closestID = instance_nearest(x,y,obj_asteroid);
			with(mlController) {
				var targetArray = [1,0,0];
				with(closestID) {
					if(sign(angle_difference(image_angle, point_direction(x,y,other.x,other.y))) > 0) {
						targetArray = [1,1,0];
					}
					else if(sign(angle_difference(image_angle, point_direction(x,y,other.x,other.y))) < 0) {
						targetArray = [1,0,1];
					}
					else {
						targetArray = [1,0,0];
					}
				}	
				ml_backpropagation(targetArray, backLearningRate);
			}	
		}
	}

	if(parentShield2 != noone) {
		with(parentShield2) {
			var closestID = instance_nearest(x,y,obj_asteroid);
			with(mlController) {
				var targetArray = [1,0,0];
				with(closestID) {
					if(sign(angle_difference(image_angle, point_direction(x,y,other.x,other.y))) > 0) {
						targetArray = [1,1,0];
					}
					else if(sign(angle_difference(image_angle, point_direction(x,y,other.x,other.y))) < 0) {
						targetArray = [1,0,1];
					}
					else {
						targetArray = [1,0,0];
					}
				}	
				ml_backpropagation(targetArray, backLearningRate);
			}	
		}
	}	
}


#endregion

#region Crossover

	// Settings change
	if(global.changed) {
		global.changed = false;
		
		// Change the global values
		with(obj_ui_values) {
			global.totalTeams   = teams;
			global.minTeam      = minTeams;
			global.hiddenDepth  = newDepth;
			global.hiddenHeight = newHeight;
			global.weightRange  = newWeight;
			global.biasRange    = newBias;
			global.hiddenActivation = newHiddenActivation;
			global.outputActivation = newOutputActivation;
			global.gameType = newGameType;
			global.spawnType = newSpawnType;
		}
		
		// Spawn Fresh Bots
		with(obj_inputController) scr_spawn();
		
	}
	
	// Use crossover
	else {
		var mutationRate = 1;
	
		// Spawn the Children
		with(obj_inputController) {
			for(var t = 0; t < global.totalTeams; t++) {
	
				// SPAWN BOTS
				
				// Spawn Shooters
				if(global.spawnType != SPAWNTYPE.shield) {
					var randOffsetXX = random_range(-posOffset,posOffset);
					var randOffsetYY = random_range(-posOffset,posOffset);
					slot[t,PLAYERTYPE.shoot]  = instance_create_layer(room_width/2+randOffsetXX,room_height/2+randOffsetYY, "Players", obj_player_shoot);	
				}
				else {
					slot[t,PLAYERTYPE.shoot]  = noone;		
				}
				
				// Spawn Shields
				if(global.spawnType != SPAWNTYPE.shoot) {
					var randOffsetXX = random_range(-posOffset,posOffset);
					var randOffsetYY = random_range(-posOffset,posOffset);
					slot[t,PLAYERTYPE.shield] = instance_create_layer(room_width/2+randOffsetXX,room_height/2+randOffsetYY, "Players", obj_player_shield);
				}
				else {
					slot[t,PLAYERTYPE.shield] = noone;
				}
				
	
				// Set teams and ml controller
			
				#region Shoot Crossover
				
				if(global.spawnType != SPAWNTYPE.shield) {
					with(slot[t,PLAYERTYPE.shoot]) {
						image_angle = random_range(0,360);
						with(mlController) {
					
							team = t;
							botType = PLAYERTYPE.shoot;
					
							// Bias Node
							for(var b = 0; b <= global.hiddenDepth; b++) {
								if(random(100) > mutationRate) {
									var parent = choose(parentShoot1, parentShoot2);
									bias[b] = parent.mlController.bias[b]; 
								}
								else {
									bias[b] = random_range(-global.biasRange,global.biasRange); // Bias Number
								}
							}
	
							// Hidden layer (INPUT)
							for(var h = 0; h < global.hiddenHeight; h++) {
								for(var i = 0; i < INPUT.size; i++) {
									if(random(100) > mutationRate) {
										var parent = choose(parentShoot1, parentShoot2);
										hiddenWeight[0][h][i] = parent.mlController.hiddenWeight[0][h][i];
									}
									else {
										hiddenWeight[0][h][i] = random_range(-global.weightRange, global.weightRange);
									}
								}
							}
	
							// Hidden layer (EXTRA)
							for(var d = 1; d < global.hiddenDepth; d++) {
								for(var h = 0; h < global.hiddenHeight; h++) {
									for(var i = 0; i < global.hiddenHeight; i++) {
										if(random(100) > mutationRate) {
											var parent = choose(parentShoot1, parentShoot2);
											hiddenWeight[d][h][i] = parent.mlController.hiddenWeight[d][h][i];
										}
										else {
											hiddenWeight[d][h][i] = random_range(-global.weightRange, global.weightRange);	
										}
									}
								}	
							}
	
							// Output Layer
							for(var o = 0; o < OUTPUT.size; o++) { 
								output[o] = 0;
								for(var w = 0; w < global.hiddenHeight; w++) {
									if(random(100) > mutationRate) {
										var parent = choose(parentShoot1, parentShoot2);
										outputWeights[o][w] = parent.mlController.outputWeights[o][w];
									}
									else {
										outputWeights[o][w] = random_range(-global.weightRange, global.weightRange);		
									}
								}
							}
					
						}
					}	
				}
				
				#endregion
				
				#region Shield Crossover
				
				if(global.spawnType != SPAWNTYPE.shoot) {
					with(slot[t,PLAYERTYPE.shield]) {
				
						image_angle = random_range(0,360);
				
						with(mlController) {
							team = t;
							botType = PLAYERTYPE.shield;
					
							// BIAS
					
							// Bias Node
							for(var b = 0; b <= global.hiddenDepth; b++) {
								if(random(100) > mutationRate) {
									var parent = choose(parentShield1, parentShield2);
									bias[b] = parent.mlController.bias[b]; 
								}
								else {
									bias[b] = random_range(-global.biasRange,global.biasRange); // Bias Number
								}
							}
	
							// Hidden layer (INPUT)
							for(var h = 0; h < global.hiddenHeight; h++) {
								for(var i = 0; i < INPUT.size; i++) {
									if(random(100) > mutationRate) {
										var parent = choose(parentShield1, parentShield2);
										hiddenWeight[0][h][i] = parent.mlController.hiddenWeight[0][h][i];
									}
									else {
										hiddenWeight[0][h][i] = random_range(-global.weightRange, global.weightRange);
									}
								}
							}
	
							// Hidden layer (EXTRA)
							for(var d = 1; d < global.hiddenDepth; d++) {
								for(var h = 0; h < global.hiddenHeight; h++) {
									for(var i = 0; i < global.hiddenHeight; i++) {
										if(random(100) > mutationRate) {
											var parent = choose(parentShield1, parentShield2);
											hiddenWeight[d][h][i] = parent.mlController.hiddenWeight[d][h][i];
										}
										else {
											hiddenWeight[d][h][i] = random_range(-global.weightRange, global.weightRange);	
										}
									}
								}	
							}
	
							// Output Layer
							for(var o = 0; o < OUTPUT.size; o++) { 
								output[o] = 0;
								for(var w = 0; w < global.hiddenHeight; w++) {
									if(random(100) > mutationRate) {
										var parent = choose(parentShield1, parentShield2);
										outputWeights[o][w] = parent.mlController.outputWeights[o][w];
									}
									else {
										outputWeights[o][w] = random_range(-global.weightRange, global.weightRange);		
									}
								}
							}
					
						}
					}	
				}
				
				#endregion
				
			}
		}	
	}
	
#endregion
	
#region Cleanup

	// Delete the best
	with(parentShoot1)  instance_destroy();
	with(parentShoot2)  instance_destroy();
	with(parentShield1) instance_destroy();
	with(parentShield2) instance_destroy();
	with(obj_player) {
		if(lost) instance_destroy();	
	}
	
	// Delete the Asteroids and enemies
	with(obj_asteroid) instance_destroy();
	with(obj_enemy) instance_destroy();
	with(obj_shot_player) instance_destroy();
	with(obj_shot_enemy) instance_destroy();
	
	// Add next generation and reset timer
	global.generation++;
	global.gameTimer = 0;
	global.currentTeams = global.totalTeams;
	if(global.gameType == GAMETYPE.single and global.spawnType == SPAWNTYPE.both) 
		global.currentTeams *= 2;
	
	if(global.selectedPlayer != noone) global.selectedPlayer = instance_find(obj_player,0);
	
#endregion
	
}