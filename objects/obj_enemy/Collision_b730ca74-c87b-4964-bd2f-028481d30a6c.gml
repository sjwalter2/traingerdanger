/// @description Insert description here
// You can write your code in this editor
if(carrying = noone)
{
var dynamite = other
with(obj_player)
{
	if(carrying = dynamite)
	{
		carrying = noone	
	}
}
dynamite.x = x
dynamite.y = y
carrying = dynamite

if(instance_exists(obj_player))
	target = instance_nearest(x,y,obj_player)
else
	instance_destroy()
	
carryingExists = 1

}
