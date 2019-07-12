/// @description Insert description here
// You can write your code in this editor
randomize()
width = 50
height = 28
tileSize = 32
xx = 0
yy = 0
border = 0
actions = 15
hoverX = -1
hoverY = -1
depth = 10
grid = generate_grid(width, height)

for(var i = 0; i < 1;i++)
{
	var playerX = irandom(width-1)
	var playerY = irandom(height-1)
	var player = instance_create_depth(playerX*tileSize + tileSize/2, playerY*tileSize + tileSize/2,0, obj_player)
	player.posX = playerX
	player.posY = playerY

	var enemyX = irandom(width-1)
	var enemyY = irandom(height-1)
	var enemy = instance_create_depth(enemyX*tileSize + tileSize/2, enemyY*tileSize + tileSize/2,0, obj_enemy)
	enemy.posX = enemyX
	enemy.posY = enemyY
}

	var enemyX = irandom(width-1)
	var enemyY = irandom(height-1)
	var enemy = instance_create_depth(enemyX*tileSize + tileSize/2, enemyY*tileSize + tileSize/2,0, obj_enemy)
	enemy.posX = enemyX
	enemy.posY = enemyY