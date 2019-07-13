/// @description Insert description here
// You can write your code in this editor
if(placed && !set)
{
	var leftRail = noone
	var rightRail = noone
	var upRail = noone
	var downRail = noone
	with(obj_rail)
	{
		if(posX = other.posX - 1 && posY = other.posY)	
			leftRail = id
		if(posX = other.posX + 1 && posY = other.posY)	
			rightRail = id
		if(posY = other.posY - 1 && posX = other.posX)	
			upRail = id
		if(posY = other.posY + 1 && posX = other.posX)	
			downRail = id
	}
	
	if(leftRail != noone && (leftRail.connection0 = 0 || leftRail.connection1 = 0))
	{
		connection0 = "left"
		image_angle = 90
		image_index = 0
		if(leftRail.connection0 = 0)
		{
			leftRail.connection0 = "right"
			leftRail.image_angle = 90	
			leftRail.image_index = 0
		}
		else if(leftRail.connection1 = 0)
		{
			leftRail.connection1 = "right"	
			if(leftRail.connection0 = "up")
			{
				leftRail.image_index = 1
				leftRail.image_angle = 90
			}
			if(leftRail.connection0 = "down")
			{
				leftRail.image_index = 1
				leftRail.image_angle = 0
			}
		}
	}
	
	else if(rightRail != noone && (rightRail.connection0 = 0 || rightRail.connection1 = 0))
	{
		connection0 = "right"
		image_angle = 90
		image_index = 0
		if(rightRail.connection0 = 0)
		{
			rightRail.connection0 = "left"
			rightRail.image_angle = 90	
			rightRail.image_index = 0
		}
		else if(rightRail.connection1 = 0)
		{
			rightRail.connection1 = "left"	
			if(rightRail.connection0 = "up")
			{
				rightRail.image_index = 1
				rightRail.image_angle = 180
			}
			if(rightRail.connection0 = "down")
			{
				rightRail.image_index = 1
				rightRail.image_angle = 270
			}
		}
	}
	else if(upRail != noone && (upRail.connection0 = 0 || upRail.connection1 = 0))
	{
		connection0 = "up"
		image_angle = 0
		image_index = 0
		if(upRail.connection0 = 0)
		{
			upRail.connection0 = "down"
			upRail.image_angle = 0	
			upRail.image_index = 0
		}
		else if(upRail.connection1 = 0)
		{
			upRail.connection1 = "down"	
			if(upRail.connection0 = "left")
			{
				upRail.image_index = 1
				upRail.image_angle = 270
			}
			if(upRail.connection0 = "right")
			{
				upRail.image_index = 1
				upRail.image_angle = 0
			}
		}
	}
	else if(downRail != noone && (downRail.connection0 = 0 || downRail.connection1 = 0))
	{
		connection0 = "down"
		image_angle = 0
		image_index = 0
		if(downRail.connection0 = 0)
		{
			downRail.connection0 = "up"
			downRail.image_angle = 0	
			downRail.image_index = 0
		}
		else if(downRail.connection1 = 0)
		{
			downRail.connection1 = "up"	
			if(downRail.connection0 = "left")
			{
				downRail.image_index = 1
				downRail.image_angle = 180
			}
			if(downRail.connection0 = "right")
			{
				downRail.image_index = 1
				downRail.image_angle = 90
			}
		}
	}
	
	if(connection0 != "left" && leftRail != noone && (leftRail.connection0 = 0 || leftRail.connection1 = 0))
	{
		connection1 = "left"
		if(connection0 = "up")
		{
			image_index = 1	
			image_angle = 180
		}
		if(connection0 = "down")
		{
			image_index = 1	
			image_angle = 270
		}
		if(leftRail.connection0 = 0)
		{
			leftRail.connection0 = "right"
			leftRail.image_angle = 90	
			leftRail.image_index = 0
		}
		else if(leftRail.connection1 = 0)
		{
			leftRail.connection1 = "right"	
			if(leftRail.connection0 = "up")
			{
				leftRail.image_index = 1
				leftRail.image_angle = 90
			}
			if(leftRail.connection0 = "down")
			{
				leftRail.image_index = 1
				leftRail.image_angle = 0
			}
		}
	}
	
	else if(connection0 != "right" && rightRail != noone && (rightRail.connection0 = 0 || rightRail.connection1 = 0))
	{
		connection1 = "right"
		if(connection0 = "up")
		{
			image_index = 1	
			image_angle = 90
		}
		if(connection0 = "down")
		{
			image_index = 1	
			image_angle = 0
		}
		if(rightRail.connection0 = 0)
		{
			rightRail.connection0 = "left"
			rightRail.image_angle = 90	
			rightRail.image_index = 0
		}
		else if(rightRail.connection1 = 0)
		{
			rightRail.connection1 = "left"	
			if(rightRail.connection0 = "up")
			{
				rightRail.image_index = 1
				rightRail.image_angle = 180
			}
			if(rightRail.connection0 = "down")
			{
				rightRail.image_index = 1
				rightRail.image_angle = 270
			}
		}
	}
	else if(connection0 != "up" && upRail != noone && (upRail.connection0 = 0 || upRail.connection1 = 0))
	{
		connection1 = "up"
		if(connection0 = "left")
		{
			image_index = 1	
			image_angle = 180
		}
		if(connection0 = "right")
		{
			image_index = 1	
			image_angle = 90
		}
		if(upRail.connection0 = 0)
		{
			upRail.connection0 = "down"
			upRail.image_angle = 0	
			upRail.image_index = 0
		}
		else if(upRail.connection1 = 0)
		{
			upRail.connection1 = "down"	
			if(upRail.connection0 = "left")
			{
				upRail.image_index = 1
				upRail.image_angle = 270
			}
			if(upRail.connection0 = "right")
			{
				upRail.image_index = 1
				upRail.image_angle = 0
			}
		}
	}
	else if(connection0 != "down" && downRail != noone && (downRail.connection0 = 0 || downRail.connection1 = 0))
	{
		connection1 = "down"
		if(connection0 = "left")
		{
			image_index = 1	
			image_angle = 270
		}
		if(connection0 = "right")
		{
			image_index = 1	
			image_angle = 0
		}
		if(downRail.connection0 = 0)
		{
			downRail.connection0 = "up"
			downRail.image_angle = 0	
			downRail.image_index = 0
		}
		else if(downRail.connection1 = 0)
		{
			downRail.connection1 = "up"	
			if(downRail.connection0 = "left")
			{
				downRail.image_index = 1
				downRail.image_angle = 180
			}
			if(downRail.connection0 = "right")
			{
				downRail.image_index = 1
				downRail.image_angle = 90
			}
		}
	}
	set = 1
	depth = 5
}