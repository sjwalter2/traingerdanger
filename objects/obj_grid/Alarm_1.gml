/// @description Insert description here
// You can write your code in this editor
alarm_set(1, irandom_range(1200, 2400))
instance_create_depth(get_x_from_pos(5),get_y_from_pos(height-1),0,obj_enemy)