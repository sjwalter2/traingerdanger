/// @description Insert description here
// You can write your code in this editor

 var str;
 switch (incrementer)
 {
  case 0: str = "Left click on a worker to select. Left click to move.";break;
  case 1: str = "Right click also moves, or performs context-specific events.";break;
  case 2:
 	var railbldg = instance_create_depth(get_x_from_pos(0), get_y_from_pos(4),1,obj_rail_building)
	 instance_create_depth(get_x_from_pos(0), get_y_from_pos(4),-100,obj_lookatme);
	railbldg.posX = 0;
	railbldg.posY = 4;
	str = "This building produces rails. Move a worker onto a rail piece.";
	break;
  case 3: str = "Now, right click somewhere to place the rail piece.";with(obj_lookatme){instance_destroy()}; break;
  case 4: str = "Placing rails next to each other connects them. We need to connect the starting and ending pieces before the train comes!";
	with(obj_grid_tutorial){
		 instance_create_depth(get_x_from_pos(0), get_y_from_pos(floor(height/2)),-100,obj_lookatme);  
		 instance_create_depth(get_x_from_pos(width-1), get_y_from_pos(floor(height/2)),-100,obj_lookatme);  
	}
	break;
  case 5: str = "Note: Each rail costs 1 iron. You'll start with a few iron already, but you'll want to get more from the mountain. We'll cover that later.";break;
  case 6: 
	with(obj_lookatme){instance_destroy()};
    var dyanmitebldg = instance_create_depth(get_x_from_pos(0), get_y_from_pos(2),1,obj_dynamite_building)
	 instance_create_depth(get_x_from_pos(0), get_y_from_pos(2),-100,obj_lookatme);
	dyanmitebldg.posX = 0
	dyanmitebldg.posY = 2
    str = "You can pick up other objects as well. This building produces dynamite. Try picking up a dynamite.";break;
  case 7: str = "Careful! Put the dynamite down before that timer runs out! Workers who are injured by should be taken to the medical tent.";
    with(obj_lookatme){instance_destroy()};
   	var hospital = instance_create_depth(get_x_from_pos(0), get_y_from_pos(0),1, obj_hospital)
	 instance_create_depth(get_x_from_pos(0), get_y_from_pos(0),-100,obj_lookatme);
	hospital.posX = 0
	hospital.posY = 0
	break;
  case 8: with(obj_lookatme){instance_destroy()}; str = "Placing dynamite next to the mountain means you can blow your way through!";break;
  case 9: str = "You can also right click the mountain to have your miner dig away... slowly.";break;
  case 10: str = "Dynamite destroys any gems or iron in the mountain. But miners can collect them, so dig away at the dark spots.";break;
  case 11:
  	var storagebldg = instance_create_depth(get_x_from_pos(0),get_y_from_pos(6),1,obj_storage_building)
	 instance_create_depth(get_x_from_pos(0), get_y_from_pos(6),-100,obj_lookatme);
	storagebldg.posX = 0
	storagebldg.posY = 6
    str = "You can pick up gems and iron and deposit it in the bin. You can see your current totals at the top of the screen.";break;
  case 12:
    with(obj_lookatme){instance_destroy()};
  	var playerbldg = instance_create_depth(get_x_from_pos(0),get_y_from_pos(8),1,obj_player_building)
	 instance_create_depth(get_x_from_pos(0), get_y_from_pos(8),-100,obj_lookatme);
	playerbldg.posX = 0
	playerbldg.posY = 8
    str = "Gather 2 gems and you can hire a new worker! Right click here with another worker to train them.";break;
  case 13:
	with(obj_lookatme){instance_destroy()};
    str = "This is a placeholder, just in case we add more features like upgrading dynamite or building buildings!"
  break;
  case 14:
	str = "That's it. Go ahead and play the main game!";break;
  case 15:
    room_goto(0);
	str = "";
	break;
  default: str = "Something went wrong!";break;
 }
 with(obj_text){
	instance_destroy()	 
 }
 scr_text(str,1,300,800);
incrementer++