//draw_path_to(xx,yy,size,pathX,pathY)	

var xx = argument0
var yy = argument1
var size = argument2
var pathX = argument3
var pathY = argument4
var lw = 3
var xDir = 0
var yDir = 0 
draw_set_color(c_white)
for(var i = 0; i < array_length_1d(pathX) - 1; i++)
{
	xDir = pathX[i] - pathX[i+1]
	yDir = pathY[i] - pathY[i+1]
	if(i < array_length_1d(pathX) - 2)
		draw_line_width(xx + size*pathX[i] +size/2,yy + size*pathY[i]+size/2,xx + size*pathX[i+1]+size/2 - xDir*lw,yy + size*pathY[i+1]+size/2 - yDir*lw,lw*2)
	else
		draw_line_width(xx + size*pathX[i] +size/2,yy + size*pathY[i]+size/2,xx + size*pathX[i+1]+size/2 + xDir*lw,yy + size*pathY[i+1]+size/2 + yDir*lw,lw*2)
	//lw+=1
}

draw_triangle(xx + size*pathX[i] + size/2 - yDir*lw*2 + xDir*lw*2 + 1,
				yy + size*pathY[i]+size/2 - xDir*lw*2 + yDir*lw*2, 
				xx + size*pathX[i] +size/2 + yDir*lw*2 + xDir*lw*2+ 1,
				yy + size*pathY[i]+size/2 + xDir*lw*2 + yDir*lw*2, 
				xx + size*pathX[i] +size/2 - xDir*lw*2 + xDir*lw*2+ 1,
				yy + size*pathY[i]+size/2 - yDir*lw*2 + yDir*lw*2, 0)