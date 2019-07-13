/// @description destroy things I touch
// You can write your code in this editor

with obj_player {
	show_debug_message("My posX is " + string(posX) + " and the explosion's posX is " + string(other.posX))
	if (posX == other.posX) && (posY == other.posY){
		instance_destroy()
	}
}
with obj_enemy {
	if (posX == other.posX) && (posY == other.posY){
		instance_destroy()
	}
}
with obj_dynamite {
	if (posX == other.posX) && (posY == other.posY){
		if alarm_get(0) > 15
			alarm_set(0,15)
	}
}
with obj_grid {
	if ds_map_find_value(grid[other.posX, other.posY], "mountain") == 1{
		ds_map_set(grid[other.posX, other.posY],"mountain",0)
		ds_map_set(grid[other.posX, other.posY],"ore",0)
		ds_map_set(grid[other.posX, other.posY],"cost",1)
	}
	
}

alarm_set(1,60);

