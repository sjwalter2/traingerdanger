/// @description Insert description here
// You can write your code in this editor
var carry = carrying != noone
//var otherMoving = 0
//with(obj_player)
//	if(myTurn)
//		otherMoving = 1
if(!myTurn){
with(obj_grid)
{
	get_range(other.actions, hoverX, hoverY, other.actionsMax)
	if(carry)
	{
		for(var i = 0; i < width; i++)
			for(var j = 0; j < height; j++)
				if(ds_map_find_value(grid[i,j], "inRange") == 1)
				{
					var left = 0
					var right = 0
					var up = 0
					var down = 0
		
					if(i > 0) left = 1
					if(array_height_2d(grid)-1 >i) right = 1
					if(j > 0) up = 1
					if(array_length_2d(grid, 0)-1 > j) down = 1	
			
					if(left && !ds_map_find_value(grid[i - 1, j], "mountain")  && ds_map_find_value(grid[i - 1, j], "inRange") = 0) ds_map_replace(grid[i - 1, j], "inRange", 2)
					if(right && !ds_map_find_value(grid[i + 1, j], "mountain") && ds_map_find_value(grid[i + 1, j], "inRange") = 0) ds_map_replace(grid[i + 1, j], "inRange", 2)
					if(up && !ds_map_find_value(grid[i, j - 1], "mountain") && ds_map_find_value(grid[i, j - 1], "inRange") = 0) ds_map_replace(grid[i, j - 1], "inRange", 2)
					if(down && !ds_map_find_value(grid[i, j + 1], "mountain") && ds_map_find_value(grid[i, j + 1], "inRange") = 0) ds_map_replace(grid[i, j + 1], "inRange", 2)
		
					if(left && up && !ds_map_find_value(grid[i - 1, j - 1], "mountain") && ds_map_find_value(grid[i - 1, j - 1], "inRange") = 0) ds_map_replace(grid[i - 1, j - 1], "inRange", 2)
					if(right && up && !ds_map_find_value(grid[i + 1, j - 1], "mountain") && ds_map_find_value(grid[i + 1, j - 1], "inRange") = 0) ds_map_replace(grid[i + 1, j - 1], "inRange", 2)
					if(left && down && !ds_map_find_value(grid[i - 1, j + 1], "mountain") && ds_map_find_value(grid[i - 1, j + 1], "inRange") = 0) ds_map_replace(grid[i - 1, j + 1], "inRange", 2)
					if(right && down && !ds_map_find_value(grid[i + 1, j + 1], "mountain") && ds_map_find_value(grid[i + 1, j + 1], "inRange") = 0) ds_map_replace(grid[i + 1, j + 1], "inRange", 2)
			
					
				}
	}
	else
	{
		for(var i = 0; i < width; i++)
			for(var j = 0; j < height; j++)
				if(ds_map_find_value(grid[i,j], "inRange") == 1)
				{
					var left = 0
					var right = 0
					var up = 0
					var down = 0
		
					if(i > 0) left = 1
					if(array_height_2d(grid)-1 >i) right = 1
					if(j > 0) up = 1
					if(array_length_2d(grid, 0)-1 > j) down = 1	
			
					if(left && ds_map_find_value(grid[i - 1, j], "mountain")  && ds_map_find_value(grid[i - 1, j], "inRange") = 0) ds_map_replace(grid[i - 1, j], "inRange", 3)
					if(right && ds_map_find_value(grid[i + 1, j], "mountain") && ds_map_find_value(grid[i + 1, j], "inRange") = 0) ds_map_replace(grid[i + 1, j], "inRange", 3)
					if(up && ds_map_find_value(grid[i, j - 1], "mountain") && ds_map_find_value(grid[i, j - 1], "inRange") = 0) ds_map_replace(grid[i, j - 1], "inRange", 3)
					if(down && ds_map_find_value(grid[i, j + 1], "mountain") && ds_map_find_value(grid[i, j + 1], "inRange") = 0) ds_map_replace(grid[i, j + 1], "inRange", 3)
				}	
	}
}
	
with(obj_selectable)
	selected = 0

alarm_set(0,10)
}