/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)
draw_set_alpha(.5)
draw_rectangle(0,0,room_width,50,0)
draw_set_alpha(1)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(c_yellow)
draw_text(300, 10, "Iron: " + string(global.Iron))
draw_text(380, 10, "Gems: " + string(global.Gems))
draw_text(600, 10, "Turn Count: " + string(global.TurnCount))
draw_text(760, 10, "Current Turn: " + global.WhoseTurn)
