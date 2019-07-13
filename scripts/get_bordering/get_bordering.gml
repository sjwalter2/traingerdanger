//get_bordering(posX,posY,grid)
//Called by generate_grid
var i = argument0
var j = argument1
var grid = argument2
var UL = 0
var U = 0
var UR = 0
var L = 0
var R = 0
var DL = 0
var D = 0
var DR = 0
if(i = 0)
{
	UL = 1
	L = 1
	DL = 1
}
else 
{
	if(j != 0)
		UL = ds_map_find_value(grid[i - 1, j - 1], "mountain")
	if(j != array_length_2d(grid, 0) - 1)	
		DL = ds_map_find_value(grid[i - 1, j + 1], "mountain")
	L = ds_map_find_value(grid[i - 1, j], "mountain")
}
if(j = 0)
{
	UL = 1
	U = 1
	UR = 1
}
else 
{
	if(i != 0)
		UL = ds_map_find_value(grid[i - 1, j - 1], "mountain")
	if(i != array_height_2d(grid) - 1)	
		UR = ds_map_find_value(grid[i + 1, j - 1], "mountain")
	U = ds_map_find_value(grid[i, j-1], "mountain")
}
	
if(i = array_height_2d(grid) - 1)
{
	UR = 1
	R = 1
	DR = 1
}
else 
{
	if(j != 0)
		UR = ds_map_find_value(grid[i + 1, j - 1], "mountain")
	if(j != array_length_2d(grid, 0) - 1)	
		DR = ds_map_find_value(grid[i + 1, j + 1], "mountain")
	R = ds_map_find_value(grid[i + 1, j], "mountain")
}
	
if(j = array_length_2d(grid, 0) - 1)
{
	DL = 1
	D = 1
	DR = 1
}
else 
{
	if(i != 0)
		DL = ds_map_find_value(grid[i - 1, j + 1], "mountain")
	if(i != array_height_2d(grid) - 1)	
		DR = ds_map_find_value(grid[i + 1, j + 1], "mountain")
	D = ds_map_find_value(grid[i, j + 1], "mountain")
}
	
return set_border(UL,U,UR,L,R,DL,D,DR)
