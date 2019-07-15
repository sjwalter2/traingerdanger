/// @description Insert description here
// You can write your code in this editor
posX = -1
posY = -1
goalX = -1
goalY = -1
walk = 0
placeOnReach = -1
selected = 0
carrying = noone
pathToTargetX = []
pathToTargetY = []
pathCount = 1
if global.WalkSpeedUpgrade {
	moveSpeed = 7
} else {
	moveSpeed = 5
}
pointReached = 1
myTurn = 0
injured = 0
pickingUp = 0
mineOnReach = -1
purchaseOnReach = -1
mining = 0
if global.MineSpeedUpgrade {
	mineTimer = 200
} else {
	mineTimer = 400
}
myTurnOnNew = 0
grid = 0
with(obj_grid)
	other.grid = id;
//ACTIONS AND ACTION COSTS
actions = 8
actionsMax = 8
actionCostMine = 4

sprite_index = asset_get_index("spr_player" + string(irandom(2)))