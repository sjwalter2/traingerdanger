for(var i = 0; i < width; i++)
	for(var j = 0; j < height; j++)
	{
		ds_map_replace(grid[i,j], "pathCost", -1)
		ds_map_replace(grid[i,j], "pathX", [])
		ds_map_replace(grid[i,j], "pathY", [])
		ds_map_replace(grid[i,j], "inRange", 0)
	}