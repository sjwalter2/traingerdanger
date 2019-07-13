with(obj_grid){
	var rail = instance_create_depth(get_x_from_pos(other.posX+1), get_y_from_pos(other.posY),0, obj_rail)
	rail.posX = other.posX+1
	rail.posY = other.posY
}
if place_meeting(rail.x,rail.y,obj_player){
	with(instance_place(rail.x,rail.y,obj_player)){
		pickingUp = 1;
	}
}

alarm_set(1,rail_spawn_rate)
