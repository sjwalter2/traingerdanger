/// @description Insert description here
// You can write your code in this editor
if upgraded {
	var product = obj_c4
} else {
	var product = obj_dynamite
}
with(obj_grid){
	var dynamite = instance_create_depth(get_x_from_pos(other.posX+1), get_y_from_pos(other.posY),0, product)
	dynamite.posX = other.posX+1
	dynamite.posY = other.posY
}
if place_meeting(dynamite.x,dynamite.y,obj_player){
	with(instance_place(dynamite.x,dynamite.y,obj_player)){
		pickingUp = 1;
	}
}

alarm_set(1,dynamite_spawn_rate)
