//generate_grid(width, height)
var w = argument0 
var h = argument1 

var grid = []
var iters = 3
var chance = 2
var ironOdds = 10
var gemOdds = 20
for(var i = 0; i < w; i++)
{
	for(var j = 0; j < h; j++)
	{
		var space_map = ds_map_create()

		ds_map_add(space_map, "cost", irandom_range(1,1))
		ds_map_add(space_map, "hover", 0)
		ds_map_add(space_map, "ore", 0)
		ds_map_add(space_map, "occupied", 0)
		ds_map_add(space_map, "inRange", 0)
		ds_map_add(space_map, "pathCost", -1)
		ds_map_add(space_map, "pathX", [])
		ds_map_add(space_map, "pathY", [])
		ds_map_add(space_map, "posX", i)
		ds_map_add(space_map, "posY", j)
		grid[i,j] = space_map
	}
}

//generate mountain
var startPoint = irandom_range(floor(w/4),floor(w/3))
var rowWidth = irandom_range(w/5,w/4)
for (var j = 0; j < h; j++)
{
    for (var i = 0; i < w; i++)
	{
		var mount = 0
		if(i >= startPoint && i < startPoint + rowWidth)
		{
			mount = 1
		}
		ds_map_add(grid[i,j], "mountain", mount)
		if(irandom(8) = 0)
			ds_map_add(grid[i,j], "crack", irandom(9))
		else
			ds_map_add(grid[i,j], "crack", -1)
		
		
	}
	if(i < w/2)
	{

		rowWidth += irandom_range(-1,2)
	}
	else
	{
		
		rowWidth += irandom_range(-2,1)
	}
		startPoint += irandom_range(-1,1)
	
	if(startPoint > (w-rowWidth))
	{
		startPoint -=2
		rowWidth -= 1	
	}
	if(startPoint <= w/8)
		startPoint++
	if(startPoint + rowWidth >= w - w/4)
		rowWidth -=1
	if(rowWidth < w/3)
		rowWidth++
	if(rowWidth > w/2)
		rowWidth--
}


for(var k = 0; k < iters; k++)
{
        for (var i = 1; i < w-1; i++)
		{
            for (var j = 1; j < h-1; j++)
			{
                if(irandom(floor(chance/2)) == 0 and ds_map_find_value(grid[i,j], "mountain") == 1 and ds_map_find_value(grid[i - 1,j], "mountain") != 1) 
					ds_map_replace(grid[i - 1,j], "mountain", 1)
                if(irandom(floor(chance/2)) == 0 and ds_map_find_value(grid[i,j], "mountain") == 1 and ds_map_find_value(grid[i + 1,j], "mountain") != 1) 
					ds_map_replace(grid[i + 1,j], "mountain", 1)
                if(irandom(chance) == 0 and ds_map_find_value(grid[i,j], "mountain") == 1 and ds_map_find_value(grid[i, j-1], "mountain") != 1)
					ds_map_replace(grid[i,j - 1], "mountain", 1)
                if(irandom(chance) == 0 and ds_map_find_value(grid[i,j], "mountain") == 1 and ds_map_find_value(grid[i, j+1], "mountain") != 1)
					ds_map_replace(grid[i,j + 1], "mountain", 1)
			}
		}
        chance+=1		
}

//spawn ore and increase mountain cost
for (var i = 0; i < w; i++)
		{
            for (var j = 0; j < h; j++)
			{
				ds_map_add(grid[i,j], "borderArray", get_bordering(i,j,grid))
				if (ds_map_find_value(grid[i,j], "mountain"))
				{
					ds_map_replace(grid[i,j], "cost", 100)	
					if(irandom(gemOdds) = 0)
						ds_map_replace(grid[i,j],"ore", 1) //gems
					else if(irandom(ironOdds) = 0)
						ds_map_replace(grid[i,j],"ore", 2) //iron		
				}
				
			}
		}
return grid
		
