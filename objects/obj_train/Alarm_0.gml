/// @description Insert description here
// You can write your code in this editor

if(!currentRail.endRail)
{
	if(currentRail.rail0 != lastRail && currentRail.rail0 != noone)	
	{
		lastRail = currentRail
		currentRail = currentRail.rail0	
	}
	else if(currentRail.rail1 != lastRail && currentRail.rail1 != noone )	
	{
		lastRail = currentRail
		currentRail = currentRail.rail1	
	} else {
		finish = 0
		with(obj_grid){

				var randX = irandom_range(1,width-2)
				var randY = irandom_range(1,height-2)
				var dynamite = instance_create_depth(get_x_from_pos(randX), get_y_from_pos(randY),0, obj_dynamite)
				dynamite.posX = randX
				dynamite.posY = randY
				with dynamite{alarm_set(0,10)}
				
				var randX = irandom_range(1,width-2)
				var randY = irandom_range(1,height-2)
				var dynamite = instance_create_depth(get_x_from_pos(randX), get_y_from_pos(randY),0, obj_dynamite)
				dynamite.posX = randX
				dynamite.posY = randY
				with dynamite{alarm_set(0,10)}
			
		}
		image_alpha =0
		if(alarm_get(1) = -1)
			alarm_set(1,500)
	}
	x = currentRail.x
	posX = currentRail.posX
	y = currentRail.y
	posY = currentRail.posY

} else {
	finish = 1
	image_alpha =0
	if(alarm_get(1) = -1)
		alarm_set(1,500)
}
	
	



alarm_set(0,30)