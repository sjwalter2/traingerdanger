if global.Gems >= upgradeCost {
	global.MineSpeedUpgrade = 1;
	with obj_player{
		mineTimer = 200;
	}
	global.Gems = global.Gems - upgradeCost
	with mytextbox{instance_destroy()}
	mytextbox1 =  scr_text("Mine Speed Upgraded!",1,x-200,y-20);
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
