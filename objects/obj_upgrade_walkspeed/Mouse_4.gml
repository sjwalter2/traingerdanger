if global.Gems >= upgradeCost {
	global.WalkSpeedUpgrade = 1;
	global.Gems = global.Gems - upgradeCost
	var textbox =  scr_text("Walk Speed Upgraded!",1,x-200,y-20);
	with textbox{
		alarm_set(1,300)
	}
	instance_destroy();

} else {
	var textbox =  scr_text("Not enough gems",1,x-150,y-20);
	textbox.myPlayer = myPlayer;
	with textbox{
		alarm_set(1,300)
	}
	instance_destroy();
}