//draw_space(xx,yy,i,j,size,border, map)
var xx = argument0
var yy = argument1
var i = argument2
var j = argument3
var size = argument4
var border = argument5
var acts = argument6
var map = argument7
var grid = argument8
var cost = ds_map_find_value(map, "cost")
var hover = ds_map_find_value(map, "hover")
var inRange = ds_map_find_value(map, "inRange")
var pathX = ds_map_find_value(map, "pathX")
var pathY = ds_map_find_value(map, "pathY")
var pathCost = ds_map_find_value(map, "pathCost")
var mountain = ds_map_find_value(map, "mountain")
var ore = ds_map_find_value(map, "ore")

var centerX = xx + i * size + size/2
var centerY = yy + j * size+ size/2
var leftX = xx + i * size
var rightX = xx + (i+1) * size
var upY = yy + j * size
var downY = yy + (j+1) * size

if(!mountain)
	draw_set_color(make_color_hsv(80,120,150-20*cost))
else if(ore = 0)
	draw_set_color(c_ltgray)
else if(ore = 1)
	draw_set_color(make_color_hsv(140,50,100))
else if(ore = 2)
	draw_set_color(make_color_hsv(0,50,100))
draw_rectangle(leftX + 1,upY +1 ,rightX -1, downY-1 , 0)






if(mountain)
{
	var mountainArray = ds_map_find_value(map, "borderArray")
	var borderColor1 = c_gray
	var borderColor2 = c_dkgray
	for(var k = 0; k < 2; k++)
	{
		draw_sprite_ext(spr_mountain_border,mountainArray[k],centerX,centerY,1,1,90*k,borderColor1,1)
		if(mountainArray[k] = 7)
			draw_sprite_ext(spr_mountain_border,6,centerX,centerY,1,1,90*k,borderColor2,1)
	}
	for(var k = 2; k < 4; k++)
	{
		draw_sprite_ext(spr_mountain_border,mountainArray[k],centerX,centerY,1,1,90*k,borderColor2,1)
		if(mountainArray[k] = 7)
			draw_sprite_ext(spr_mountain_border,6,centerX,centerY,1,1,90*k,borderColor1,1)
	}
	
}
if(inRange)
{
	draw_set_color(c_blue)
	draw_set_alpha(.2)
	draw_rectangle(leftX+ border, upY + border, rightX - border , downY - border , 0)
	draw_rectangle(leftX + 2*border, upY + 2*border, rightX - 2*border , downY - 2*border , 0)
	draw_set_alpha(1)
}