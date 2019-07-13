/// @description Insert description here
// You can write your code in this editor
if(pickingUp)
{
var carried = 0
var item = other.id
with(obj_player)
	if(carrying = item)
		carried = 1
if(carrying = noone && !carried)
{
	carrying = other
	carrying.depth = depth - 1
}
pickingUp = 0
}