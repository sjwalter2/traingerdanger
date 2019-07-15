/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(obj_train))
{
global.gameLost = 1;
instance_create_depth(1,1,-5,obj_train)
with(obj_player){
	injured = 1;
}
}