var dynamitebuilding = instance_nearest(x,y,obj_dynamite_building)
if dynamitebuilding == noone{
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
		//var mx = get_x_from_pos(dynamitebuilding.posX+1)
		//var my = dynamitebuilding.y
		if (selectedPlayer != noone &&  
			ds_map_find_value(grid[dynamitebuilding.posX + 1, dynamitebuilding.posY], "inRange") >= 1 &&
			ds_map_find_value(grid[dynamitebuilding.posX + 1, dynamitebuilding.posY], "occupied") == 0)
		{

			selectedPlayer.targetSelected = 1
			selectedPlayer.goalX = dynamitebuilding.posX+1
			selectedPlayer.goalY = dynamitebuilding.posY
			selectedPlayer.pathCount = 0
			selectedPlayer.pathToTargetX =  ds_map_find_value(grid[dynamitebuilding.posX + 1, dynamitebuilding.posY], "pathX")
			selectedPlayer.pathToTargetY = ds_map_find_value(grid[dynamitebuilding.posX + 1, dynamitebuilding.posY], "pathY")
			selectedPlayer.myTurn = 1
			clear_range()
	
		}
		else if(ds_map_find_value(grid[hoverX, hoverY], "inRange") = 0)
			clear_range()	
	
	}