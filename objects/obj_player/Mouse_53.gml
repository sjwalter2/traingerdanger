/// @description Insert description here
// You can write your code in this editor
if(selected)
	with(obj_grid)
	{
		var selectedPlayer = noone
		var conflict = 0
		with(obj_player)
		{
			if(selected)
				selectedPlayer = id
			if(goalX = other.hoverX && goalY = other.hoverY)
				conflict = 1
		}
	
		var mx = mouse_x
		var my = mouse_y
		if (!conflict && selectedPlayer != noone && 
			(mx > xx + hoverX*tileSize && mx <= xx + (hoverX+1)*tileSize &&
			my > yy + hoverY*tileSize && my <= yy +(hoverY+1)*tileSize) && 
			ds_map_find_value(grid[hoverX, hoverY], "inRange") == 1)
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
		else if(!(mx > xx + hoverX*tileSize && mx <= xx + (hoverX+1)*tileSize &&
			my > yy + hoverY*tileSize && my <= yy +(hoverY+1)*tileSize) ||
			ds_map_find_value(grid[hoverX, hoverY], "inRange") = 0)
			clear_range()	
	
	}