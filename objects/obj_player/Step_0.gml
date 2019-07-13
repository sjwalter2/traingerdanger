/// @description Insert description here
// You can write your code in this editor


if injured {
	
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
				carrying.x = startX + carrying.posX*size + size/2
				carrying.y = startY + carrying.posY*size + size/2
				carrying = noone
				placeOnReach = -1
			}
			pickingUp = 1
			alarm_set(1,5)
		}
	}
}