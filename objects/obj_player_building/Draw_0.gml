/// @description Insert description here
// You can write your code in this editor
if(alarm_get(1)>1){
	draw_circular_bar(x ,y ,alarm_get(1), player_spawn_rate, make_color_hsv(0,0,255), make_color_hsv(255,255,255), 24, 1, 6)
}
draw_self()