/// @description Insert description here
sprite_index = asset_get_index("spr_explosion" + string(irandom(2)))
posX = -1;
posY = -1;
iamdangerous = 1;
alarm_set(0,1)

grid = 0;

with(obj_grid){
	other.grid = self;
}
