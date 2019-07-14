if global.WhoseTurn == "enemy" {
	global.WhoseTurn = "player"
	global.TurnCount = global.TurnCount + 1
	if global.TurnCount = global.MaxTurn {
		global.gameLost = 1;
		instance_create_depth(1,1,-5,obj_train)
		with(obj_player){
			injured = 1;
		}
	}



	playerMoveArray = []
	moveArrayCount = 0



	with(obj_player)
	{
		actions = actionsMax
		if (myTurnOnNew)
		{
			myTurnOnNew = 0
			other.playerMoveArray[array_length_1d(other.playerMoveArray)] = id
			
		}

	}
	if(array_length_1d(playerMoveArray) > 0)
	{
		alarm_set(0,1)	
	}
}
