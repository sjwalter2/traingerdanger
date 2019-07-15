/// @description Insert description here
// You can write your code in this editor
target = 0
moveSpeed = 2
changeDirection = 1
moveDir = 0
carrying = noone
posX = 0
posY = 0
carryingExists = 0
if(instance_exists(obj_dynamite))
	target = instance_nearest(x,y,obj_dynamite)
else
	instance_destroy()