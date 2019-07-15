/// @description Insert description here
// You can write your code in this editor

//Check for mouse hover
var mx = mouse_x
var my = mouse_y
if !(mx > xx + hoverX*tileSize && mx <= xx + (hoverX+1)*tileSize && my > yy + hoverY*tileSize && my <= yy +(hoverY+1)*tileSize)
{
	for(var i = 0; i < width; i++)
		for(var j = 0; j < height; j++)
			if(mx > xx + i*tileSize && mx <= xx + (i+1)*tileSize && my > yy + j*tileSize && my <= yy + (j+1)*tileSize)
			{
				ds_map_replace(grid[i,j], "hover", 1)
				hoverX = i
				hoverY = j
			}
			else
				ds_map_replace(grid[i,j], "hover", 0)
}
var playersExist = 0
with(obj_player)
	playersExist = 1
	
var trainExist = 0
with(obj_train)
	trainExist = 1
if(!trainExist && !playersExist && alarm_get(0) != -1)
	alarm_set(0,1)
