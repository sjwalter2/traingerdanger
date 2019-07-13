/// @description Insert description here
// You can write your code in this editor
var empty = 1


with(obj_dynamite) { 
	if (posX == other.posX+1) && (posY == other.posY)
		empty = 0
}
with(obj_explosion) { 
	if (posX == other.posX+1) && (posY == other.posY)
		empty = 0
}
if !empty{
	alarm_set(1,alarm_get(1)+1)
}
