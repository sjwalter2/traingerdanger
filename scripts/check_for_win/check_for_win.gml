var currentRail = -1
var lastRail = -1
with(obj_rail)
{
	if(startRail)
		currentRail = id;
}

while(!currentRail.endRail)
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
	}
	else
		break
}
if(currentRail.endRail)
{
	with(obj_gui)
	{
		global.gameWon = 1	
	}
}