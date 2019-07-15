if global.Gems >= upgradeCost {
	myBuilding.upgrade = 1;
	global.Gems = global.Gems - upgradeCost
} else {
	var textbox =  scr_text("Not enough gems",1,x-150,y-20);
	textbox.myPLayer = myPlayer;
	instance_destroy();
}