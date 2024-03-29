/// @description Insert description here
// You can write your code in this editor
/// @description Explosion!

with(obj_grid){
	other.grid = self
}
var U = 1
var RR = 1
var RRR = 1
var R = 1
var D = 1

if(posX == array_height_2d(grid.grid) -1)
{
	R = 0
	RR = 0
	RRR = 0
} else if(posX == array_height_2d(grid.grid) -2){
	RR = 0
	RRR = 0
} else if(posX == array_height_2d(grid.grid) -2){
	RRR = 0
}

if(posY == 0)
{
	U = 0
} else if(posY == array_length_2d(grid.grid,0)-1){
	D = 0
}

with grid{
	if (U == 1){
		var expl = instance_create_depth(get_x_from_pos(other.posX), get_y_from_pos(other.posY-1),-1, obj_explosion)
		expl.posX = other.posX;
		expl.posY = other.posY-1;
	}
	if (D == 1){
		var expl = instance_create_depth(get_x_from_pos(other.posX), get_y_from_pos(other.posY+1),-1, obj_explosion)		
		expl.posX = other.posX;
		expl.posY = other.posY+1;
	}
	if (R == 1){
		var expl = instance_create_depth(get_x_from_pos(other.posX+1), get_y_from_pos(other.posY),-1, obj_explosion)		
		expl.posX = other.posX+1;
		expl.posY = other.posY;
	}
	if(U && R)
	{
		var expl = instance_create_depth(get_x_from_pos(other.posX+1), get_y_from_pos(other.posY-1),-1, obj_explosion)
		expl.posX = other.posX+1;
		expl.posY = other.posY-1;	
	}
	if(U && RR)
	{
		var expl = instance_create_depth(get_x_from_pos(other.posX+2), get_y_from_pos(other.posY-1),-1, obj_explosion)
		expl.posX = other.posX+2;
		expl.posY = other.posY-1;	
	}

	if(D && R)
	{
		var expl = instance_create_depth(get_x_from_pos(other.posX+1), get_y_from_pos(other.posY+1),-1, obj_explosion)
		expl.posX = other.posX+1;
		expl.posY = other.posY+1;	
	}
	if(D && RR)
	{
		var expl = instance_create_depth(get_x_from_pos(other.posX+2), get_y_from_pos(other.posY+1),-1, obj_explosion)
		expl.posX = other.posX+2;
		expl.posY = other.posY+1;	
	}
	if(RR)
	{
		var expl = instance_create_depth(get_x_from_pos(other.posX+2), get_y_from_pos(other.posY),-1, obj_explosion)
		expl.posX = other.posX+2;
		expl.posY = other.posY;	
	}
	if(RRR)
	{
		var expl = instance_create_depth(get_x_from_pos(other.posX+3), get_y_from_pos(other.posY),-1, obj_explosion)
		expl.posX = other.posX+3;
		expl.posY = other.posY;	
	}

	var expl = instance_create_depth(get_x_from_pos(other.posX), get_y_from_pos(other.posY),-1, obj_explosion)		
	expl.posX = other.posX;
	expl.posY = other.posY;
}
with(obj_player)
	if(carrying == other.id)
		carrying = noone
		
instance_destroy();