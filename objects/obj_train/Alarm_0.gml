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
		with(obj_grid){
			var dynamite = instance_create_depth(get_x_from_pos(other.posX+1), get_y_from_pos(other.posY),0, obj_dynamite)
			dynamite.posX = other.posX+1
			dynamite.posY = other.posY
			with dynamite{alarm_set(0,10)}
			dynamite = instance_create_depth(get_x_from_pos(other.posX-1), get_y_from_pos(other.posY),0, obj_dynamite)
			dynamite.posX = other.posX-1
			dynamite.posY = other.posY
			with dynamite{alarm_set(0,10)}
		}
		instance_destroy()
	}
	x = currentRail.x
	posX = currentRail.posX
	y = currentRail.y
	posY = currentRail.posY

} else {
	instance_destroy()
}
	
	



alarm_set(0,30)