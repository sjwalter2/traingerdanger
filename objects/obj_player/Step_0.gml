/// @description Insert description here
// You can write your code in this editor


if injured {
	with(obj_grid){
		other.x = get_x_from_pos(other.posX)
		other.y = get_y_from_pos(other.posY)
		var injuredplayer = instance_create_depth(other.x, other.y,0, obj_injuredplayer)
		injuredplayer.sprite_index = other.sprite_index
		injuredplayer.posX = other.posX
		injuredplayer.posY = other.posY
		//injuredplayer.VARIABLE = other.VARIABLE
	}
	instance_destroy()
}

if(myTurn  && pointReached && actions > 0)
{
	var startX = 0
	var startY = 0
	var size = 0
	selected = 0
	with(obj_grid)
	{
		startX = xx
		startY = yy
		size = tileSize
	}
	if(array_length_1d(pathToTargetX) > 0)
	{
		currentTargetX = startX + pathToTargetX[pathCount]*size + size/2
		currentTargetY = startY + pathToTargetY[pathCount]*size + size/2
		
		
	}
	
	move_towards_point(currentTargetX,currentTargetY,moveSpeed)
	pointReached = 0

}
if(myTurn  && !pointReached && actions > 0)
{
	if(point_distance(x,y,currentTargetX,currentTargetY) <= moveSpeed)
	{
		pointReached = 1
		var lastPosX = posX
		var lastPosY = posY
		posX = pathToTargetX[pathCount]
		posY = pathToTargetY[pathCount]
		walk++
		if(walk = 2)
		{
			audio_play_sound(snd_walk,0,0)
			walk = 0
		}
		if(posX < lastPosX)
		{
			image_index = 3
		}
		else if(posX > lastPosX)
		{
			image_index = 1
		}
		else if(posY < lastPosY)
		{
			image_index = 2
		}
		else if(posY > lastPosY)
		{
			image_index = 0
		}
		if(pathCount != 0){
			with (obj_grid){
				//other.actions = other.actions - ds_map_find_value(grid[other.posX, other.posY], "cost")
				if(other.actions < 0)
					other.actions = 0
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
			image_index = 0
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
 				//actions = 0;
				mining = 1
				alarm_set(2,mineTimer)
			}
			
			if(purchaseOnReach != -1)
			{
				var myX = get_x_from_pos(ds_map_find_value(purchaseOnReach, "posX"))
				var myY = get_y_from_pos(ds_map_find_value(purchaseOnReach, "posY"))
				if(instance_position(myX,myY,obj_player_building))
				{
					var playerbldg = instance_position(myX,myY,obj_player_building)
					with playerbldg{
						if global.WalkSpeedUpgrade == 0 {
							var upgradeWalkArrow = instance_create_depth(x - 50,y-60, -10, obj_upgrade_walkspeed)
							upgradeWalkArrow.myPlayer = other.id;
							upgradeWalkArrow.myBuilding = id;
						}
						if global.MineSpeedUpgrade == 0 {
							var upgradeMineArrow = instance_create_depth(x - 50,y+60, -10, obj_upgrade_minespeed)
							upgradeMineArrow.myPlayer = other.id;
							upgradeMineArrow.myBuilding = id;
						}
						var newWorkerArrow = instance_create_depth(x - 50, y, -10, obj_new_worker)
						newWorkerArrow.myPlayer = other.id;
						newWorkerArrow.myBuilding = id;
					}
				} else if(instance_position(myX,myY,obj_dynamite_building))
				{
					var dynamitebldg = instance_position(myX,myY,obj_dynamite_building)
					with dynamitebldg{
						if upgrade == 1 {
							show_debug_message("Already upgraded!")
						} else  {
							var upgradeArrow = instance_create_depth(x - 50,y, -10, obj_upgrade_to_c4)
							upgradeArrow.myPlayer = other.id;
							upgradeArrow.myBuilding = id;
						}
					}
				}
				purchaseOnReach = -1
			}
			
			pickingUp = 1
			alarm_set(1,5)
			var otherSelected =0
			with(obj_player)
				if(selected)
					otherSelected = 1
			if(reselect && !otherSelected)		
			{
				with(obj_grid)	
					clear_range()
				select_player()
			}
		}
	}
}
else if(myTurn && ds_map_find_value(grid.grid[posX,posY], "cost")> actions)
{
	speed = 0
	x = get_x_from_pos(posX)
	y = get_y_from_pos(posY)
	myTurn = 0
	myTurnOnNew = 1
}
