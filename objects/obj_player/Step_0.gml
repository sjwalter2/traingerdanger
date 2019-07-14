/// @description Insert description here
// You can write your code in this editor


if injured {
	with(obj_grid){
		other.x = get_x_from_pos(other.posX)
		other.y = get_y_from_pos(other.posY)
		var injuredplayer = instance_create_depth(other.x, other.y,0, obj_injuredplayer)
		injuredplayer.posX = other.posX
		injuredplayer.posY = other.posY
		//injuredplayer.VARIABLE = other.VARIABLE
	}
	instance_destroy()
}

if(myTurn  && pointReached)
{
	var startX = 0
	var startY = 0
	var size = 0
	with(obj_grid)
	{
		startX = xx
		startY = yy
		size = tileSize
	}
	currentTargetX = startX + pathToTargetX[pathCount]*size + size/2
	currentTargetY = startY + pathToTargetY[pathCount]*size + size/2
	
	move_towards_point(currentTargetX,currentTargetY,moveSpeed)
	pointReached = 0

}
if(myTurn  && !pointReached)
{
	if(point_distance(x,y,currentTargetX,currentTargetY) <= moveSpeed)
	{
		pointReached = 1
		posX = pathToTargetX[pathCount]
		posY = pathToTargetY[pathCount]
		if(pathCount != 0){
			with (obj_grid){
				other.actions = other.actions - ds_map_find_value(grid[other.posX, other.posY], "cost")
			}
		}
		pathCount++	
		
		
		if(pathCount >= array_length_1d(pathToTargetX))
		{
			goalX = -1
			goalY = -1
			myTurn = 0
			pathCount = 1
			targetSelected = 0
			x = currentTargetX
			y = currentTargetY 
			speed = 0
			if(placeOnReach != -1 && carrying != noone)
			{
				with(obj_grid)
				{
					var startX = xx
					var startY = yy
					var size = tileSize
				}
				carrying.posX = ds_map_find_value(placeOnReach, "posX")
				carrying.posY = ds_map_find_value(placeOnReach, "posY")
				carrying.placed = 1
				carrying.x = startX + carrying.posX*size + size/2
				carrying.y = startY + carrying.posY*size + size/2
				carrying = noone
				placeOnReach = -1
			}
			if(mineOnReach != -1 && actions > 0)
			{
 				actions = 0;
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
						ds_map_set(grid[mineX, mineY],"ore",0)
						ds_map_set(grid[mineX, mineY],"cost",1)
						for (var i = 0; i < width; i++)
						{
				            for (var j = 0; j < height; j++)
							{
								ds_map_replace(grid[i,j], "borderArray", get_bordering(i,j,grid))
							}
						}
				
					}
				}
				mineOnReach = -1
			}
			
			if(purchaseOnReach != -1)
			{
				var myX = get_x_from_pos(ds_map_find_value(purchaseOnReach, "posX"))
				var myY = get_y_from_pos(ds_map_find_value(purchaseOnReach, "posY"))
				if(instance_position(myX,myY,obj_player_building))
				{
					var playerbldg = instance_position(myX,myY,obj_player_building)
					with playerbldg{
						if global.Gems >= playerCost{
							alarm_set(1,player_spawn_rate)
							global.Gems = global.Gems - playerCost
						} else {
							show_debug_message("Not enough gems!")
						}
					}
				}
				purchaseOnReach = -1
			}
			
			pickingUp = 1
			alarm_set(1,5)
		}
	}
}