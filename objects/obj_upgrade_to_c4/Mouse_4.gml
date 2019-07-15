if global.Gems >= upgradeCost {
	myBuilding.upgrade = 1;
	global.Gems = global.Gems - upgradeCost
	with mytextbox{instance_destroy()}
	mytextbox =  scr_text("Dynamite Upgraded!",1,x-200,y-20);
	with mytextbox{
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