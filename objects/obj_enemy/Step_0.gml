/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_player))
{
	instance_destroy(instance_place(x,y,obj_player))
	instance_destroy()
}
if(myTurn && !targetSelected && instance_exists(obj_player))
{
	var targetX = -1
	var targetY = -1	
	var myX = posX
	var myY = posY
	var inRangeX = []
	var inRangeY = []
	var moveToX = -1
	var moveToY = -1
	var closest = -1
	var currentPathX = []
	var currentPathY = []
	with(obj_grid)
	{
		get_range(other.actions, other.posX, other.posY)	
		for(var i = 0; i < width; i++)
		{
			for(var j = 0; j < height; j++)
			{
				if(ds_map_find_value(grid[i,j], "inRange") = 1)
				{
					inRangeX[array_length_1d(inRangeX)] = i
					inRangeY[array_length_1d(inRangeY)] = j
					with(obj_player)
					{
						if(posX = i && posY = j && (targetX = -1 || ds_map_find_value(other.grid[posX,posY], "pathCost") > ds_map_find_value(other.grid[targetX,targetY], "pathCost")))
						{
							targetX = posX
							targetY = posY
							currentPathX = ds_map_find_value(other.grid[i,j], "pathX")
							currentPathY = ds_map_find_value(other.grid[i,j], "pathY")
						}	
					}
				}
			}
		}
		moveToX = targetX
		moveToY = targetY
		if(targetX = -1)
		{
			for(var k = 0; k <  array_length_1d(inRangeX); k++)
			{
				
				var close = instance_nearest(xx + inRangeX[k]*tileSize + tileSize/2, yy + inRangeY[k]*tileSize + tileSize/2, obj_player)
				if(closest = -1|| sqrt(sqr(close.posX - inRangeX[k]) + sqr(close.posY - inRangeY[k])) < closest)
				{
					closest = sqrt(sqr(close.posX - inRangeX[k]) + sqr(close.posY - inRangeY[k]))
					moveToX = inRangeX[k]
					moveToY = inRangeY[k]
					
				}
			}
		}
		get_range(other.actions, other.posX, other.posY)	
		currentPathX = ds_map_find_value(grid[moveToX,moveToY], "pathX")
		currentPathY = ds_map_find_value(grid[moveToX,moveToY], "pathY")
		other.targetSelected = 1
		other.posX = moveToX
		other.posY = moveToY
		other.pathToTargetX = currentPathX
		other.pathToTargetY = currentPathY	
		other.pointReached = 1
		
		clear_range()
	}
}

if(myTurn && targetSelected && pointReached)
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
if(myTurn && targetSelected && !pointReached)
{
	if(point_distance(x,y,currentTargetX,currentTargetY) <= moveSpeed)
	{
		pointReached = 1
		pathCount++	
		if(pathCount >= array_length_1d(pathToTargetX))
		{
			myTurn = 0
			pathCount = 1
			targetSelected = 0
			x = currentTargetX
			y = currentTargetY 
			speed = 0
		}
	}
}

