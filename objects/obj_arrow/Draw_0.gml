/// @description Insert description here
// You can write your code in this editor
with(obj_grid)
{
	for(var i = 0; i < width; i++)
		for(var j = 0; j < height; j++)
			if(ds_map_find_value(grid[i,j], "hover") && ds_map_find_value(grid[i,j], "inRange") = 1 )
			{
				draw_path_to(xx,yy,tileSize,ds_map_find_value(grid[i,j], "pathX"),ds_map_find_value(grid[i,j], "pathY"))	
			}
}
