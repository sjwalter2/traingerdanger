/// @description Insert description here
// You can write your code in this editor

//Move Player
var selectedPlayer = noone
with(obj_player)
{
	if(selected)
		selectedPlayer = id
}
	

if (selectedPlayer != noone && ds_map_find_value(grid[hoverX, hoverY], "inRange") != 0)
{

	selectedPlayer.targetSelected = 1
	selectedPlayer.posX = hoverX
	selectedPlayer.posY = hoverY
	selectedPlayer.pathToTargetX =  ds_map_find_value(grid[hoverX,hoverY], "pathX")
	selectedPlayer.pathToTargetY = ds_map_find_value(grid[hoverX,hoverY], "pathY")
	selectedPlayer.myTurn = 1
	clear_range()
	
}