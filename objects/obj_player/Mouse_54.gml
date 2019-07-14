/// @description Insert description here
// You can write your code in this editor
if(selected)
	with(obj_grid)
	{
		var carryingPlayer = noone
		var selectedPlayer = noone
		var item = noone
		var conflict = 0
		with(obj_player)
		{
			if(selected && carrying != noone)
			{
				carryingPlayer = id
				item = carrying	
			}
			if(selected)
				selectedPlayer = id
			if(goalX = other.hoverX && goalY = other.hoverY)
				conflict = 1
		}
		with(obj_carryable)
		{
			if(posX = other.hoverX && posY = other.hoverY && carryingPlayer != noone)	
				conflict = 1
		}
		with(obj_building)
		{
			if(object_index != obj_storage_building && posX = other.hoverX && posY = other.hoverY && carryingPlayer != noone)	
				conflict = 1
		}
		var mx = mouse_x
		var my = mouse_y
		if ((!conflict || (item.object_index == obj_injuredplayer && instance_position(mx,my,obj_hospital))) && carryingPlayer != noone && 
			(mx > xx + hoverX*tileSize && mx <= xx + (hoverX+1)*tileSize &&
			my > yy + hoverY*tileSize && my <= yy +(hoverY+1)*tileSize) && 
			ds_map_find_value(grid[hoverX,hoverY],"inRange") != 0) &&
			ds_map_find_value(grid[hoverX, hoverY], "mountain") == 0 
		{
			var target = find_nearest_border(hoverX,hoverY,grid, 1)
			carryingPlayer.placeOnReach = grid[hoverX,hoverY]
			carryingPlayer.targetSelected = 1
			carryingPlayer.goalX = ds_map_find_value(target, "posX")
			carryingPlayer.goalY = ds_map_find_value(target, "posY")
			carryingPlayer.pathCount = 0
			carryingPlayer.pathToTargetX =  ds_map_find_value(target, "pathX")
			carryingPlayer.pathToTargetY = ds_map_find_value(target, "pathY")
			carryingPlayer.myTurn = 1
			clear_range()
		}
		else if(!conflict && selectedPlayer != noone && 
			(mx > xx + hoverX*tileSize && mx <= xx + (hoverX+1)*tileSize &&
			my > yy + hoverY*tileSize && my <= yy +(hoverY+1)*tileSize) && 
			ds_map_find_value(grid[hoverX,hoverY],"inRange") = 1 &&
			ds_map_find_value(grid[hoverX, hoverY], "occupied") == 0) &&
			ds_map_find_value(grid[hoverX, hoverY], "mountain") == 0 
		{
			selectedPlayer.targetSelected = 1
			selectedPlayer.goalX = hoverX
			selectedPlayer.goalY = hoverY
			selectedPlayer.pathCount = 0
			selectedPlayer.pathToTargetX =  ds_map_find_value(grid[hoverX,hoverY], "pathX")
			selectedPlayer.pathToTargetY = ds_map_find_value(grid[hoverX,hoverY], "pathY")
			selectedPlayer.myTurn = 1
			clear_range()
		}
		else if(!conflict && selectedPlayer != noone && 
			(mx > xx + hoverX*tileSize && mx <= xx + (hoverX+1)*tileSize &&
			my > yy + hoverY*tileSize && my <= yy +(hoverY+1)*tileSize) && 
			ds_map_find_value(grid[hoverX,hoverY],"inRange") = 3)
		{
			var target = find_nearest_border(hoverX,hoverY,grid, 0)
			selectedPlayer.mineOnReach = grid[hoverX,hoverY]
			selectedPlayer.targetSelected = 1
			selectedPlayer.goalX = ds_map_find_value(target, "posX")
			selectedPlayer.goalY = ds_map_find_value(target, "posY")
			selectedPlayer.pathCount = 0
			selectedPlayer.pathToTargetX =  ds_map_find_value(target, "pathX")
			selectedPlayer.pathToTargetY = ds_map_find_value(target, "pathY")
			selectedPlayer.myTurn = 1
			clear_range()
		}
		else if(!conflict && selectedPlayer != noone && 
			(mx > xx + hoverX*tileSize && mx <= xx + (hoverX+1)*tileSize &&
			my > yy + hoverY*tileSize && my <= yy +(hoverY+1)*tileSize) && 
			ds_map_find_value(grid[hoverX,hoverY],"inRange") = 1 && 
			instance_position(mx,my,obj_player_building) &&
			ds_map_find_value(grid[hoverX, hoverY], "mountain") == 0 ) {
			var target = find_nearest_border(hoverX,hoverY,grid, 0)
			selectedPlayer.purchaseOnReach = grid[hoverX,hoverY]
			selectedPlayer.targetSelected = 1
			selectedPlayer.goalX = ds_map_find_value(target, "posX")
			selectedPlayer.goalY = ds_map_find_value(target, "posY")
			selectedPlayer.pathCount = 0
			selectedPlayer.pathToTargetX =  ds_map_find_value(target, "pathX")
			selectedPlayer.pathToTargetY = ds_map_find_value(target, "pathY")
			selectedPlayer.myTurn = 1
			clear_range()
		}
		else if (!conflict || ds_map_find_value(grid[hoverX,hoverY],"inRange") == 0)
			clear_range()	
	}
	