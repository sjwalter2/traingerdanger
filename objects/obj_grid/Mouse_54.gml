/// @description Insert description here
// You can write your code in this editor


var carryingPlayer = noone
var item = noone
with(obj_player)
{
	if(selected && carrying != noone)
	{
		carryingPlayer = id
		item = carrying	
	}
	else if(selected)
		selected = 0
		
}
	

if (carryingPlayer != noone && ds_map_find_value(grid[hoverX,hoverY],"inRange") = 2)
{
	item.posX = hoverX
	item.posY = hoverY
	item.x = xx + hoverX*tileSize + tileSize/2
	item.y = yy + hoverY*tileSize + tileSize/2
	carryingPlayer.carrying = noone
	get_range(carryingPlayer.actions, carryingPlayer.posX,carryingPlayer.posY)
	
}
else
	clear_range()