var railbuilding = instance_nearest(x,y,obj_rail_building)
if railbuilding == noone{
	exit;
}
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
		//var mx = get_x_from_pos(railbuilding.posX+1)
		//var my = railbuilding.y
		if (selectedPlayer != noone &&  
			ds_map_find_value(grid[railbuilding.posX + 1, railbuilding.posY], "inRange") >= 1 &&
			ds_map_find_value(grid[railbuilding.posX + 1, railbuilding.posY], "occupied") == 0)
		{

			selectedPlayer.targetSelected = 1
			selectedPlayer.goalX = railbuilding.posX+1
			selectedPlayer.goalY = railbuilding.posY
			selectedPlayer.pathCount = 0
			selectedPlayer.pathToTargetX =  ds_map_find_value(grid[railbuilding.posX + 1, railbuilding.posY], "pathX")
			selectedPlayer.pathToTargetY = ds_map_find_value(grid[railbuilding.posX + 1, railbuilding.posY], "pathY")
			selectedPlayer.myTurn = 1
			clear_range()
	
		}
		else if(ds_map_find_value(grid[hoverX, hoverY], "inRange") = 0)
			clear_range()	
	
	}