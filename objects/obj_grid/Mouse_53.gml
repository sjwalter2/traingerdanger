/// @description Insert description here
// You can write your code in this editor

//Move Player
var selectedPlayer = noone
var conflict = 0
with(obj_player)
{
	if(selected)
		selectedPlayer = id
	if(goalX = other.hoverX && goalY = other.hoverY)
		conflict = 1
}
	

if (!conflict && selectedPlayer != noone && ds_map_find_value(grid[hoverX, hoverY], "inRange") != 0)
{

	selectedPlayer.targetSelected = 1
	selectedPlayer.goalX = hoverX
	selectedPlayer.goalY = hoverY
	selectedPlayer.pathCount = 0
	selectedPlayer.pathToTargetX =  ds_map_find_value(grid[hoverX,hoverY], "pathX")
	selectedPlayer.pathToTargetY = ds_map_find_value(grid[hoverX,hoverY], "pathY")
	selectedPlayer.myTurn = 1
	clear_range()
	
}