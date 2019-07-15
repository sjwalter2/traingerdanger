if global.Gems >= playerCost{
	with myBuilding {
		alarm_set(1,player_spawn_rate)
	}
	global.Gems = global.Gems - playerCost
}
else {
	with mytextbox {instance_destroy()}
	mytextbox1 =  scr_text("Not enough gems",1,x-180,y-20);
	mytextbox1.myPlayer = myPlayer;
	with mytextbox1{
		alarm_set(1,300)
	}
	instance_destroy();
}
