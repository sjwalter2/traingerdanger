/// @description Insert description here

/*ds_map_reference:

cost => movement cost
hover => hovered, yes / no
ore => 0 is none, 1 is gems, 2 is iron
occupied => am I occupied
inRange
pathCost
pathX
pathY
mountain
borderArray
posX
posY
*/

randomize()
width = 44
height = 22
tileSize = 32
boardWidth = width*tileSize
boardHeight = height*tileSize
xx = (room_width - boardWidth)/2
yy = (room_height - boardHeight)/2
actions = 15
hoverX = -1
hoverY = -1
depth = 10
grid = generate_grid(width, height)
var leftMostMountain = width
for (var i = 0; i < width; i++)
{
	for (var j = 0; j < height; j++)
	{
		if(ds_map_find_value(grid[i, j], "mountain") = 1)
		{
			leftMostMountain = i
			break;
		}
	}
	if(leftMostMountain != width)
		break;
}
for(var i = 0; i < 25;i++)
{
	var playerX = irandom(leftMostMountain-1)
	var playerY = irandom(height-1)
	var player = instance_create_depth(get_x_from_pos(playerX), get_y_from_pos(playerY),0, obj_player)
	player.posX = playerX
	player.posY = playerY

	//var enemyX = irandom(width-1)
	//var enemyY = irandom(height-1)
	//var enemy = instance_create_depth(xx + enemyX*tileSize + tileSize/2, yy + enemyY*tileSize + tileSize/2,0, obj_enemy)
	//enemy.posX = enemyX
	//enemy.posY = enemyY
	
//	var dynamiteX = irandom(leftMostMountain-1)
	var dynamiteX = playerX+1;
//	var dynamiteY = irandom(height-1)
	var dynamiteY = playerY;
	var dynamite = instance_create_depth(xx + dynamiteX*tileSize + tileSize/2, yy + dynamiteY*tileSize + tileSize/2,0, obj_dynamite)
	dynamite.posX = dynamiteX
	dynamite.posY = dynamiteY
	var dynamite2 = instance_create_depth(xx + (dynamiteX+1)*tileSize + tileSize/2, yy + dynamiteY*tileSize + tileSize/2,0, obj_dynamite)
	dynamite2.posX = dynamiteX+1
	dynamite2.posY = dynamiteY
	
}

	var hospital = instance_create_depth(get_x_from_pos(0), get_y_from_pos(0),1, obj_hospital)
	hospital.posX = 0
	hospital.posY = 0
	
	var dyanmitebldg = instance_create_depth(get_x_from_pos(0), get_y_from_pos(2),1,obj_dynamite_building)
	dyanmitebldg.posX = 0
	dyanmitebldg.posY = 2