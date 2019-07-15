/// @description Insert description here
// You can write your code in this editor
alarm_set(1, irandom_range(1200, 2400))
switch(irandom(3))
{
case 0:
	instance_create_depth(get_x_from_pos(irandom(width-1)),get_y_from_pos(height-1),0,obj_enemy)
break
case 1:
	instance_create_depth(get_x_from_pos(irandom(width-1)),get_y_from_pos(0),0,obj_enemy)
break
case 2:
	instance_create_depth(get_x_from_pos(0),get_y_from_pos(irandom(height-1)),0,obj_enemy)
break
case 3:
	instance_create_depth(get_x_from_pos(width-1),get_y_from_pos(irandom(height-1)),0,obj_enemy)
break
}