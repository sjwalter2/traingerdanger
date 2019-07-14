draw_self()
if(global.Iron > 0)
{
draw_circular_bar(x ,y ,alarm_get(1), rail_spawn_rate, make_color_hsv(0,0,255), make_color_hsv(255,255,255), 24, 1, 6)
}
else
{
	draw_sprite(spr_no_iron, 0, x,y-sprite_height/2)	
}