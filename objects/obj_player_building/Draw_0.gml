/// @description Insert description here
// You can write your code in this editor
draw_self()
if(alarm_get(1)>1){
	
	draw_circular_pie(x ,y - sprite_height/2 ,alarm_get(1), player_spawn_rate, make_color_hsv(100,255,255),  8, 1)
}
