//draw_space(xx,yy,i,j,size,map)
var xx = argument0
var yy = argument1
var i = argument2
var j = argument3
var size = argument4
var map = argument5

var cost = ds_map_find_value(map, "color")
var inRange = ds_map_find_value(map, "inRange")
var mountain = ds_map_find_value(map, "mountain")
var mountain1 = ds_map_find_value(map, "mountain1")
var ore = ds_map_find_value(map, "ore")

var centerX = xx + i * size + size/2
var centerY = yy + j * size+ size/2
var leftX = xx + i * size
var rightX = xx + (i+1) * size
var upY = yy + j * size
var downY = yy + (j+1) * size

if(!mountain)
	draw_set_color(make_color_hsv(80,120,140-1*cost))
else if(ore = 0 && mountain1)
	draw_set_color(c_ltgray)
else if(ore = 0 && !mountain1)
	draw_set_color(c_gray)
else if(ore = 1)
	draw_set_color(make_color_hsv(140,50,100))
else if(ore = 2)
	draw_set_color(make_color_hsv(0,50,100))
draw_rectangle(leftX + 1,upY +1 ,rightX -1, downY-1 , 0)






if(mountain)
{
	var mountainArray = ds_map_find_value(map, "borderArray")
	var borderColor1 = c_ltgray
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
	var crack =  ds_map_find_value(map,"crack")
	if(crack != -1)
	{
		draw_set_alpha(.2)
		draw_sprite(spr_mountainCracks,crack,centerX,centerY)
		draw_set_alpha(1)
	}
	
}
if(mountain1)
{
	var mountainArray = ds_map_find_value(map, "borderArray1")
	var borderColor1 = c_gray
	var borderColor2 = c_dkgray
	for(var k = 0; k < 2; k++)
	{
		draw_sprite_ext(spr_mountain_border1,mountainArray[k],centerX,centerY,1,1,90*k,borderColor1,1)
		if(mountainArray[k] = 7)
			draw_sprite_ext(spr_mountain_border1,6,centerX,centerY,1,1,90*k,borderColor2,1)
	}
	for(var k = 2; k < 4; k++)
	{
		draw_sprite_ext(spr_mountain_border1,mountainArray[k],centerX,centerY,1,1,90*k,borderColor2,1)
		if(mountainArray[k] = 7)
			draw_sprite_ext(spr_mountain_border1,6,centerX,centerY,1,1,90*k,borderColor1,1)
	}
	var crack =  ds_map_find_value(map,"crack")
	if(crack != -1)
	{
		draw_set_alpha(.2)
		draw_sprite(spr_mountainCracks,crack,centerX,centerY)
		draw_set_alpha(1)
	}
	
}
if(inRange = 3 || inRange = 1)
{
	if(inRange = 3)
	{
	draw_set_alpha(.3)
	draw_set_color(make_color_hsv(20,255,255))
	}
	else 
	{
		draw_set_alpha(.15)
		draw_set_color(make_color_hsv(140,255,255))
	}
	draw_rectangle(leftX + 1, upY + 1, rightX - 1, downY - 1, 0)
	//draw_rectangle(leftX + 1, upY + 1, rightX - 1, downY - 1, 1)
		
		
	draw_set_alpha(1)
}
