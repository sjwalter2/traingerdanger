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
finish = 0

alarm_set(0,30);
audio_play_sound(snd_train,0,0)