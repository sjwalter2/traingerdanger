var ready = 1;
with(obj_player){
	if myTurn {
		ready = 0
	}
}
if ready{
	if global.WhoseTurn == "player" {
		global.WhoseTurn = "enemy"
	}
}