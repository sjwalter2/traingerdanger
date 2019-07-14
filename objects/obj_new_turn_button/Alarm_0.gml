/// @description Insert description here
// You can write your code in this editor
var moving = 0
with(obj_player)
{
	if(myTurn)	
		moving = 1
}
if(!moving)
{
	var conflict = 0
	if(moveArrayCount < array_length_1d(playerMoveArray))
	{
		with(playerMoveArray[moveArrayCount])
		{
			with(obj_player)
			{
				if(other.goalX = posX && other.goalY = posY)	
				{
					conflict = 1
				}
			}
			if(conflict)
			{
				goalX = -1
				goalY = -1
				myTurn = 0
				pathCount = 1
				targetSelected = 0
				x = currentTargetX
				y = currentTargetY 
				speed = 0
				mineOnReach = -1
				placeOnReach = -1
				purchaseOnReach = -1
			}
			else
			{
				myTurn = 1
			}
		}
	moveArrayCount++
	alarm_set(0, 1)
	}
}
else
	alarm_set(0, 1)