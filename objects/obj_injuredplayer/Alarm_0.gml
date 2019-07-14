/// @description Insert description here
// You can write your code in this editor

	with(obj_grid){
		other.x = get_x_from_pos(other.posX)
		other.y = get_y_from_pos(other.posY)
		var player = instance_create_depth(other.x, other.y,0, obj_player)
		player.sprite_index = other.sprite_index
		player.posX = other.posX
		player.posY = other.posY
		//player.VARIABLE = other.VARIABLE
	}
	instance_destroy()