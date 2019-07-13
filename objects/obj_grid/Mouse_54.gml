/// @description Insert description here
// You can write your code in this editor


var carryingPlayer = noone
var selectedPlayer = noone
var item = noone
var conflict = 0
with(obj_player)
{
	if(selected && carrying != noone)
	{
		carryingPlayer = id
		item = carrying	
	}
	if(selected)
		selectedPlayer = id
	if(goalX = other.hoverX && goalY = other.hoverY)
		conflict = 1
}
	
var mx = mouse_x
var my = mouse_y
if (carryingPlayer != noone && 
	(mx > xx + hoverX*tileSize && mx <= xx + (hoverX+1)*tileSize &&
	my > yy + hoverY*tileSize && my <= yy +(hoverY+1)*tileSize) && 
	ds_map_find_value(grid[hoverX,hoverY],"inRange") != 0)
{
	var target = find_nearest_border(hoverX,hoverY,grid)
	carryingPlayer.placeOnReach = grid[hoverX,hoverY]
	carryingPlayer.targetSelected = 1
	carryingPlayer.goalX = ds_map_find_value(target, "posX")
	carryingPlayer.goalY = ds_map_find_value(target, "posY")
	carryingPlayer.pathCount = 0
	carryingPlayer.pathToTargetX =  ds_map_find_value(target, "pathX")
	carryingPlayer.pathToTargetY = ds_map_find_value(target, "pathY")
	carryingPlayer.myTurn = 1
	clear_range()
}
else if(selectedPlayer != noone && 
	(mx > xx + hoverX*tileSize && mx <= xx + (hoverX+1)*tileSize &&
	my > yy + hoverY*tileSize && my <= yy +(hoverY+1)*tileSize) && 
	ds_map_find_value(grid[hoverX,hoverY],"inRange") = 1)
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
else
	clear_range()