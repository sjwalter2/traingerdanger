/// @description Insert description here
// You can write your code in this editor

	with(obj_grid){
		other.x = xx + other.posX*tileSize + tileSize/2
		other.y = yy + other.posY*tileSize + tileSize/2
		var player = instance_create_depth(other.x, other.y,0, obj_player)
		player.posX = other.posX
		player.posY = other.posY
		//player.VARIABLE = other.VARIABLE
	}
	instance_destroy()