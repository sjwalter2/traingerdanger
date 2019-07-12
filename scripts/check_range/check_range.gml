var actions = argument0
var xx = argument1
var yy = argument2
var pathX = argument3
var pathY = argument4
var grid = argument5

var i = 0;
var checkX = 0;
var checkY = 0;
var xMod = 0
var yMod = 0
var tile = -1
var tileCost = 0

var startPathX = pathX
var startPathY = pathY
for(var rotate = 0; rotate <= 3; rotate++)
{
	i = 0
	pathX = startPathX
	pathY = startPathY
	switch(rotate)
	{
		case 0:
			checkX = 1
			xMod = 1
		break;
		case 1:
			checkX = -1
			xMod = -1
		break;
		case 2:
			checkX = 0
			xMod = 0
			checkY = 1
			yMod = 1
		break;
		case 3:
			checkY = -1
			yMod = -1
		break;	
	}
	while(i <= actions)
	{
		if(xx + checkX < array_height_2d(grid) && xx + checkX >= 0 && yy + checkY < array_length_2d(grid, 0) && yy + checkY >= 0)
		{
			tile = grid[xx + checkX, yy + checkY]
			tileCost = ds_map_find_value(tile, "cost")
		}
		else
			break;
			
		if(tileCost + i <= actions)
		{
			i += tileCost
			if(ds_map_find_value(tile, "inRange") = 0 || ds_map_find_value(tile, "pathCost") < actions - i)
			{
				ds_map_replace(tile, "inRange", 1)
				ds_map_replace(tile, "pathCost",  actions - i)
				
				pathX[array_length_1d(pathX)] = xx + checkX
				pathY[array_length_1d(pathY)] = yy + checkY
				ds_map_replace(tile, "pathX",  pathX)
				ds_map_replace(tile, "pathY", pathY)
				check_range(actions-i, xx + checkX, yy + checkY, pathX, pathY, grid)
				checkX += xMod
				checkY += yMod
			}
		}
		else
			break;
	}
	
}
