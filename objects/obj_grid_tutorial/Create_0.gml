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
width = 32
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
for(var i = 0; i < 2;i++)
{
	var playerX = 2
	var playerY = i+3
	var player = instance_create_depth(get_x_from_pos(playerX), get_y_from_pos(playerY),0, obj_player)
	player.posX = playerX
	player.posY = playerY

	//var enemyX = irandom(width-1)
	//var enemyY = irandom(height-1)
	//var enemy = instance_create_depth(xx + enemyX*tileSize + tileSize/2, yy + enemyY*tileSize + tileSize/2,0, obj_enemy)
	//enemy.posX = enemyX
	//enemy.posY = enemyY
	
	
}


	


	

	
	var startRail = instance_create_depth(get_x_from_pos(0),get_y_from_pos(floor(height/2)),5,obj_rail)
	startRail.connection0 = "left"
	startRail.image_angle = 90
	startRail.startRail = 1
	startRail.posX = 0
	startRail.posY = floor(height/2)
	
//	var endRail = instance_create_depth(get_x_from_pos(width-1),get_y_from_pos(floor(height/2)),5,obj_rail)
	var endRail = instance_create_depth(get_x_from_pos(width-1),get_y_from_pos(floor(height/2)),5,obj_rail)
	endRail.connection0 = "right"
	endRail.image_angle = 90
	endRail.endRail = 1
	endRail.posX = width-1
	endRail.posY = floor(height/2)
	ds_map_replace(grid[width-1, floor(height/2)], "mountain", 0)
	ds_map_replace(grid[width-1, floor(height/2)], "cost", 1)
	ds_map_replace(grid[width-1, floor(height/2)], "ore", 0)
	ds_map_replace(grid[width-1, floor(height/2)], "borderArray", get_bordering(width-1,floor(height/2),grid))
	ds_map_replace(grid[width-2, floor(height/2)], "borderArray", get_bordering(width-2,floor(height/2),grid))
	ds_map_replace(grid[width-1, floor(height/2)+1], "borderArray", get_bordering(width-1,floor(height/2)+1,grid))
	ds_map_replace(grid[width-1, floor(height/2)-1], "borderArray", get_bordering(width-1,floor(height/2)-1,grid))
	ds_map_replace(grid[width-2, floor(height/2)-1], "borderArray", get_bordering(width-2,floor(height/2)-1,grid))
	ds_map_replace(grid[width-2, floor(height/2)+1], "borderArray", get_bordering(width-2,floor(height/2)+1,grid))
global.gameWon = 0;
global.gameLost = 0;
global.Iron = 3;
global.Gems = 2;
global.maxTime = 0;

