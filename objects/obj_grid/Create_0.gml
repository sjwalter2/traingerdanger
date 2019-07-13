/// @description Insert description here
// You can write your code in this editor
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

for(var i = 0; i < 2;i++)
{
	var playerX = irandom(width-1)
	var playerY = irandom(height-1)
	var player = instance_create_depth(xx + playerX*tileSize + tileSize/2, yy + playerY*tileSize + tileSize/2,0, obj_player)
	player.posX = playerX
	player.posY = playerY

	//var enemyX = irandom(width-1)
	//var enemyY = irandom(height-1)
	//var enemy = instance_create_depth(xx + enemyX*tileSize + tileSize/2, yy + enemyY*tileSize + tileSize/2,0, obj_enemy)
	//enemy.posX = enemyX
	//enemy.posY = enemyY
}

