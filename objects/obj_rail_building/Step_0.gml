
var empty = 1


with(obj_rail) { 
	if (posX == other.posX+1) && (posY == other.posY)
		empty = 0
}
if !empty{
	alarm_set(1,alarm_get(1)+1)
}
