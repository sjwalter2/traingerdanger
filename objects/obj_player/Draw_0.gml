/// @description Insert description here
// You can write your code in this editor
if(selected)
{
	draw_sprite(spr_sillhouette,0,x,y)
}

if(mining)
{
draw_circular_pie(x ,y - sprite_height ,alarm_get(2), mineTimer, make_color_hsv(100,255,255),  8, 1)	
}
draw_self()