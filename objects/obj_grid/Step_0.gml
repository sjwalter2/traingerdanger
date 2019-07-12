/// @description Insert description here
// You can write your code in this editor

//Check for mouse hover
var mx = mouse_x
var my = mouse_y
if !(mx > hoverX*tileSize && mx <= (hoverX+1)*tileSize && my > hoverY*tileSize && my <= (hoverY+1)*tileSize)
{
	for(var i = 0; i < width; i++)
		for(var j = 0; j < height; j++)
			if(mx > i*tileSize && mx <= (i+1)*tileSize && my > j*tileSize && my <= (j+1)*tileSize)
			{
				ds_map_replace(grid[i,j], "hover", 1)
				hoverX = i
				hoverY = j
			}
			else
				ds_map_replace(grid[i,j], "hover", 0)
}