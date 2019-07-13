/// @description Insert description here
// You can write your code in this editor


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
		}
	}
}
if injured {
	image_blend = c_red
} else {
	image_blend = c_white
}
