/// @description Insert description here
// You can write your code in this editor

//Draw grid
for(var i = 0; i < width; i++)
	for(var j = 0; j < height; j++)
		draw_space(xx,yy,i,j,tileSize,border, actions, grid[i,j], grid)


for(var i = 0; i < width; i++)
	for(var j = 0; j < height; j++)
		if(ds_map_find_value(grid[i,j], "hover") && ds_map_find_value(grid[i,j], "inRange") )
		{
			draw_path_to(xx,yy,tileSize,ds_map_find_value(grid[i,j], "pathX"),ds_map_find_value(grid[i,j], "pathY"))	
		}