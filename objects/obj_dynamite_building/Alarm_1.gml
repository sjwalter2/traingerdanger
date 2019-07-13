/// @description Insert description here
// You can write your code in this editor
with(obj_grid){
	var dynamite = instance_create_depth(get_x_from_pos(other.posX+1), get_y_from_pos(other.posY),0, obj_dynamite)
	dynamite.posX = other.posX+1
	dynamite.posY = other.posY
}
alarm_set(1,dynamite_spawn_rate)
