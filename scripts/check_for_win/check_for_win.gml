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
	global.gameWon = 1	
	var trainExists = 0
	with (obj_train){
		trainExists = 1
	}
	if !trainExists {
		instance_create_depth(1,1,-5,obj_train)
	}
}