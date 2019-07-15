/// @description Insert description here
// You can write your code in this editor
if(instance_exists(target))
{
if(x != target.x && y != target.y && changeDirection)
{
	alarm_set(0,100)
	if(irandom(1) = 0)
		moveDir = 1
	else
		moveDir = 2
}
else if(x = target.x && y != target.y)
{
	moveDir = 2
}
else if(x != target.x && y = target.y)
{
	moveDir = 1
}

if(moveDir = 1)
{
	x += sign(target.x - x)*moveSpeed
}
else if(moveDir = 2)
{
	y += sign(target.y - y)*moveSpeed	
}
}
else
{
	y-= moveSpeed
	if(y < -32)
		instance_destroy()
	if(instance_exists(obj_dynamite))
		target = instance_nearest(x,y,obj_dynamite)
}
var startX
var startY
var size
with(obj_grid)
{
	startX = xx
	startY = yy
	size = tileSize
}
posX = floor((x - startX)/size)
posY = floor((y - startY)/size)