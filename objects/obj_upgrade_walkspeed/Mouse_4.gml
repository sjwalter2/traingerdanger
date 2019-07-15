if global.Gems >= upgradeCost {
	global.WalkSpeedUpgrade = 1;
	with obj_player{
		moveSpeed = 7;
	}
	global.Gems = global.Gems - upgradeCost
	with mytextbox{instance_destroy()}
	mytextbox1 =  scr_text("Walk Speed Upgraded!",1,x-200,y-20);
	with mytextbox1{
		alarm_set(1,300)
	}
	instance_destroy();

} else {
	with mytextbox{instance_destroy()}
	mytextbox1 =  scr_text("Not enough gems",1,x-180,y-20);
	mytextbox1.myPlayer = myPlayer;
	with mytextbox1{
		alarm_set(1,300)
	}
	instance_destroy();
}
