/// @description Insert description here
// You can write your code in this editor
alarm_set(1, irandom_range(1200, 2400))
if(!instance_exists(obj_enemy))
{
	switch(irandom(2))
	{
	case 0:
		instance_create_depth(get_x_from_pos(irandom(floor(width))),get_y_from_pos(height-1),-15,obj_enemy)
	break
	case 1:
		instance_create_depth(get_x_from_pos(irandom(floor(width/2))),get_y_from_pos(0),-15,obj_enemy)
	break
	case 2:
		instance_create_depth(get_x_from_pos(0),get_y_from_pos(irandom(height-1)),-15,obj_enemy)
	break

	}
}