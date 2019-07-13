var left = 0
var right = 0
var up = 0
var down = 0

var posX = argument0
var posY = argument1
var grid = argument2
var pathCost = -1
var currentTile = -1


if(posX > 0) left = 1
if(array_height_2d(grid)-1 > posX) right = 1
if(posY > 0) up = 1
if(array_length_2d(grid, 0)-1 > posY) down = 1	
			
if(left && ds_map_find_value(grid[posX - 1, posY], "inRange") != 0 && ds_map_find_value(grid[posX - 1, posY], "pathCost") > pathCost)
{
	currentTile = grid[posX - 1, posY]
	pathCost = ds_map_find_value(grid[posX - 1, posY], "pathCost")
}
if(right && ds_map_find_value(grid[posX + 1, posY], "inRange") != 0 && ds_map_find_value(grid[posX + 1, posY], "pathCost") > pathCost)
{
	currentTile = grid[posX + 1, posY]
	pathCost = ds_map_find_value(grid[posX + 1, posY], "pathCost") 
}
if(up && ds_map_find_value(grid[posX, posY - 1], "inRange") != 0 && ds_map_find_value(grid[posX, posY - 1], "pathCost") > pathCost)
{
	currentTile = grid[posX, posY - 1]
	pathCost = ds_map_find_value(grid[posX, posY - 1], "pathCost")
}
if(down && ds_map_find_value(grid[posX, posY + 1], "inRange") != 0 && ds_map_find_value(grid[posX, posY + 1], "pathCost") > pathCost)
{
	currentTile = grid[posX, posY + 1]
	pathCost = ds_map_find_value(grid[posX, posY + 1], "pathCost") 
}
		
if(left && up && ds_map_find_value(grid[posX - 1, posY - 1], "inRange") != 0 && ds_map_find_value(grid[posX - 1, posY - 1], "pathCost") > pathCost)
{
	currentTile = grid[posX - 1, posY - 1]
	pathCost = ds_map_find_value(grid[posX - 1, posY - 1], "pathCost")
}
if(right && up && ds_map_find_value(grid[posX + 1, posY - 1], "inRange") != 0 && ds_map_find_value(grid[posX + 1, posY - 1], "pathCost") > pathCost)
{
	currentTile = grid[posX + 1, posY - 1]
	pathCost = ds_map_find_value(grid[posX + 1, posY - 1], "pathCost")
}
if(left && down && ds_map_find_value(grid[posX - 1, posY + 1], "inRange") != 0 && ds_map_find_value(grid[posX - 1, posY + 1], "pathCost") > pathCost)
{
	currentTile = grid[posX - 1, posY + 1]
	pathCost = ds_map_find_value(grid[posX - 1, posY + 1], "pathCost")
}
if(right && down && ds_map_find_value(grid[posX + 1, posY + 1], "inRange") != 0 && ds_map_find_value(grid[posX + 1, posY + 1], "pathCost") > pathCost)
{
	currentTile = grid[posX + 1, posY + 1]
	pathCost = ds_map_find_value(grid[posX + 1, posY + 1], "pathCost")
}
return currentTile