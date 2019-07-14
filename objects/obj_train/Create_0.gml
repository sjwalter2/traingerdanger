currentRail = 0
with (obj_rail) { 
	if startRail {
		other.currentRail = id
		break;
	}
}
x = currentRail.x
posX = currentRail.posX
y = currentRail.y
posY = currentRail.posY

lastRail = -1;

alarm_set(0,30);