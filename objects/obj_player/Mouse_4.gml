/// @description Insert description here
// You can write your code in this editor
with(obj_grid)
{
	get_range(other.actions, hoverX, hoverY)
	if(other.carrying != noone)	
	{ 
		
		var left = 0
		var right = 0
		var up = 0
		var down = 0
		
		if(other.posX > 0) left = 1
		if(array_height_2d(grid) > other.posX) right = 1
		if(other.posY > 0) up = 1
		if(array_length_2d(grid, 0) > other.posY) down = 1	
			
		if(left && !ds_map_find_value(grid[other.posX - 1, other.posY], "mountain")) ds_map_replace(grid[other.posX - 1, other.posY], "inRange", 2)
		if(right && !ds_map_find_value(grid[other.posX + 1, other.posY], "mountain")) ds_map_replace(grid[other.posX + 1, other.posY], "inRange", 2)
		if(up && !ds_map_find_value(grid[other.posX, other.posY - 1], "mountain")) ds_map_replace(grid[other.posX, other.posY - 1], "inRange", 2)
		if(down && !ds_map_find_value(grid[other.posX, other.posY + 1], "mountain")) ds_map_replace(grid[other.posX, other.posY + 1], "inRange", 2)
		
		if(left && up && !ds_map_find_value(grid[other.posX - 1, other.posY - 1], "mountain")) ds_map_replace(grid[other.posX - 1, other.posY - 1], "inRange", 2)
		if(right && up && !ds_map_find_value(grid[other.posX + 1, other.posY - 1], "mountain")) ds_map_replace(grid[other.posX + 1, other.posY - 1], "inRange", 2)
		if(left && down && !ds_map_find_value(grid[other.posX - 1, other.posY + 1], "mountain")) ds_map_replace(grid[other.posX - 1, other.posY + 1], "inRange", 2)
		if(right && down && !ds_map_find_value(grid[other.posX + 1, other.posY + 1], "mountain")) ds_map_replace(grid[other.posX + 1, other.posY + 1], "inRange", 2)
			
	}
}
	
with(obj_selectable)
	selected = 0

alarm_set(0,10)