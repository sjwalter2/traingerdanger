/// @description Insert description here
// You can write your code in this editor
if(placed && !set)
{
	
	with(obj_rail)
	{	
		if(placed && set && (connection0 == 0 || connection1 == 0))
		{
			if(posX = other.posX - 1 && posY = other.posY)
			{
				other.image_angle = 90
				other.image_index = 0
				other.connection0 = "left"
				if(connection0 = 0)
				{
					connection0 = "right"
					image_angle = 90
					image_index = 0
				}
				else if(connection1 = 0)
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
				}
			}
			else if (posX = other.posX + 1 && posY = other.posY)
			{
				other.image_angle = 90
				other.image_index = 0
				other.connection0 = "right"
				if(connection0 = 0)
				{
					connection0 = "left"
					image_angle = 90
					image_index = 0
				}
				else if(connection1 = 0)
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
				}
			}
			else if (posY = other.posY - 1 && posX = other.posX) 
			{
				other.image_angle = 0
				other.image_index = 0
				other.connection0 = "up"
				if(connection0 = 0)
				{
					connection0 = "down"
					image_angle = 0
					image_index = 0
				}
				else if(connection1 = 0)
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
				}
			}
			else if (posY = other.posY + 1 && posX = other.posX)
			{
				other.image_angle = 0
				other.image_index = 0
				other.connection0 = "down"
				if(connection0 = 0)
				{
					connection0 = "up"
					image_angle = 0
					image_index = 0
				}
				else if(connection1 = 0)
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
				}
			}
		}
	}
	var leftRail = noone
	var rightRail = noone
	var upRail = noone
	var downRail = noone
	with(obj_rail)
	{
		if(posX = other.posX - 1)	
			leftRail = id
		if(posX = other.posX + 1)	
			rightRail = id
		if(posY = other.posY - 1)	
			upRail = id
		if(posY = other.posY + 1)	
			downRail = id
	}
	
	set = 1
}