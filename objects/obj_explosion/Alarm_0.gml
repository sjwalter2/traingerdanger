/// @description destroy things I touch
// You can write your code in this editor

with obj_player {
	if (posX == other.posX) && (posY == other.posY){
		injured = 1;
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
		for (var i = 0; i < width; i++)
		{
            for (var j = 0; j < height; j++)
			{
				ds_map_replace(grid[i,j], "borderArray", get_bordering(i,j,grid))
			}
		}
	}
	
}

if(iamdangerous){
	iamdangerous = 0;
	alarm_set(0,20);
	alarm_set(1,40);
}
