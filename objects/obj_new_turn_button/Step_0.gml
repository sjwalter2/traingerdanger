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
	with(obj_player){
		actions = actionsMax
	}
}