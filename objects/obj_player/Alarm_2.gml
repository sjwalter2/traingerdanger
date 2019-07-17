/// @description Insert description here
// You can write your code in this editor
mining = 0
audio_play_sound(snd_mountain,0,0)
if(ds_map_find_value(mineOnReach, "mountain") = 1)
{
	var mineX = ds_map_find_value(mineOnReach, "posX")
	var mineY = ds_map_find_value(mineOnReach, "posY")
	if(ds_map_find_value(mineOnReach, "ore") = 1)
	{
		var gem = instance_create_depth(get_x_from_pos(mineX), get_y_from_pos(mineY),-10,obj_gem)
		gem.posX = mineX
		gem.posY = mineY
	}
	if(ds_map_find_value(mineOnReach, "ore") = 2)
	{
		var iron = instance_create_depth(get_x_from_pos(mineX), get_y_from_pos(mineY),-10,obj_iron)
		iron.posX = mineX
		iron.posY = mineY
	}
	with(obj_grid)	
	{
		ds_map_set(grid[mineX, mineY],"mountain",0)
		ds_map_set(grid[mineX, mineY],"mountain1",0)
		ds_map_set(grid[mineX, mineY],"ore",0)
		ds_map_set(grid[mineX, mineY],"cost",1)
		for (var i = 0; i < width; i++)
		{
			for (var j = 0; j < height; j++)
			{
				ds_map_replace(grid[i,j], "borderArray", get_bordering(i,j,grid))
				ds_map_replace(grid[i,j], "borderArray1", get_bordering1(i,j,grid))
			}
		}
				
	}
}
mineOnReach = -1
with(obj_player)
if(selected)
		select_player()