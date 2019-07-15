/// @description Insert description here
// You can write your code in this editor

//Draw grid
draw_set_color(c_black)
draw_rectangle(xx-5,yy-5,xx+tileSize*width+5,yy+tileSize*height+5,0)

for(var i = 0; i < width; i++)
	for(var j = 0; j < height; j++)
		draw_space(xx,yy,i,j,tileSize, grid[i,j])



