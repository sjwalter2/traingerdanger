//get_range(actions, xx, yy)

var actions = argument0
var xx = argument1
var yy = argument2
var actionsMax = argument3
clear_range()

var newPathX = []
newPathX[0] = xx
var newPathY = []
newPathY[0] = yy

check_range(25,xx,yy,newPathX,newPathY,grid, 1)
ds_map_replace(grid[xx,yy], "inRange", 1)
ds_map_replace(grid[xx,yy], "pathX", newPathX)
ds_map_replace(grid[xx,yy], "pathY", newPathY)
ds_map_replace(grid[xx,yy], "pathCost", actions)
