draw_self()
if(global.Iron > 0)
{
	
draw_circular_pie(x ,y - sprite_height/2 ,alarm_get(1), rail_spawn_rate, make_color_hsv(100,255,255),  8, 1)
/// draw_pie(x ,y ,value, max, colour, radius, transparency)

}
else
{
	draw_sprite(spr_no_iron, 0, x,y-sprite_height/2)	
}