/// @function scr_lost(playerID)
/// @description Makes the player/team lose
/// @param playerID - The ID to reference

function scr_lost(playerID){
	if(global.gameType == GAMETYPE.team) {
		with(obj_inputController) {
			var team = playerID.mlController.team;
			with(slot[team,PLAYERTYPE.shoot]) {
				lost = true;
				mlPoints -= round((mlPoints/2));
				if(mlPoints < 0) mlPoints = 0;
			}
			with(slot[team,PLAYERTYPE.shield]) {
				lost = true;
				mlPoints -= round((mlPoints/2));
				if(mlPoints < 0) mlPoints = 0;
			}
		}
		global.currentTeams--;
	}
	else {
		with(playerID) {
			lost = true;
			mlPoints -= round((mlPoints/2));
			if(mlPoints < 0) mlPoints = 0;
			global.currentTeams--;
		}
	}

}