/// @description Insert description here
// You can write your code in this editor
var empty = 1

with(obj_player) { 
	if (posX == other.posX+1) && (posY == other.posY)
		empty = 0
}
if !empty{
	alarm_set(1,alarm_get(1)+1)
} else {
	with(obj_grid){
		var player = instance_create_depth(get_x_from_pos(other.posX+1), get_y_from_pos(other.posY),0, obj_player)
		player.posX = other.posX+1
		player.posY = other.posY
	}
}
