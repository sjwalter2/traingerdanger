/// @description Explosion!

with(obj_grid){
	other.grid = self
}
var U = 1
var L = 1
var R = 1
var D = 1

if(posX == 0)
{
	L = 0
} else if(posX == array_height_2d(grid.grid) -1){
	R = 0
}
if(posY == 0)
{
	U = 0
} else if(posY == array_length_2d(grid.grid,0)-1){
	D = 0
}

with grid{
	if (U == 1){
		var expl = instance_create_depth(xx + other.posX*tileSize + tileSize/2, yy + (other.posY-1)*tileSize + tileSize/2,-1, obj_explosion)
		expl.posX = other.posX;
		expl.posY = other.posY-1;
	}
	if (D == 1){
		var expl = instance_create_depth(xx + other.posX*tileSize + tileSize/2, yy + (other.posY+1)*tileSize + tileSize/2,-1, obj_explosion)		
		expl.posX = other.posX;
		expl.posY = other.posY+1;
	}
	if (L == 1){
		var expl = instance_create_depth(xx + (other.posX - 1) *tileSize + tileSize/2, yy + other.posY*tileSize + tileSize/2,-1, obj_explosion)		
		expl.posX = other.posX-1;
		expl.posY = other.posY;
	}
	if (R == 1){
		var expl = instance_create_depth(xx + (other.posX + 1) *tileSize + tileSize/2, yy + other.posY*tileSize + tileSize/2,-1, obj_explosion)		
		expl.posX = other.posX+1;
		expl.posY = other.posY;
	}
	var expl = instance_create_depth(xx + other.posX *tileSize + tileSize/2, yy + other.posY*tileSize + tileSize/2,-1, obj_explosion)		
	expl.posX = other.posX;
	expl.posY = other.posY;
}
with(obj_player)
	if(carrying == other.id)
		carrying = noone
		
instance_destroy();