if global.WhoseTurn == "enemy" {
	global.WhoseTurn = "player"
	global.TurnCount = global.TurnCount + 1
	with(obj_player){
		actions = actionsMax
	}
}