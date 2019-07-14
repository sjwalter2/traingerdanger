/// @description Insert description here
// You can write your code in this editor

 var str;
 switch (incrementer)
 {
  case 0: str = "Left click on a worker to select. Left click to move.";break;
  case 1: str = "Right click also moves, or performs context-specific events.";break;
  case 2: str = "Move a worker onto a rail piece.";break;
  case 3: str = "Now, right click somewhere to place the rail piece.";break;
  case 4: str = "You can pick up other objects as well. Try picking up a dynamite.";break;
  case 5: str = "Careful! Put the dynamite down before that timer runs out!";break;
  case 6: str = "Placing dynamite next to the mountain means you can blow your way through!";break;
  case 7: str = "You can also right click the mountain to have your miner dig away... slowly.";break;
  case 8: str = "Dynamite destroys any gems or iron in the mountain. Dig away at the dark spots.";break;
  case 9: str = "You can pick up gems and iron and deposit it in the bin.";break;
  case 10: str = "Workers who are injured should be taken to the medical tent.";break;
  case 11: str = "Gather 2 gems and you can hire a new worker!";break;
  case 12:
  with(obj_grid){
	  	var player = instance_create_depth(get_x_from_pos(1), get_y_from_pos(10),0, obj_player)
		player.posX = 1;
		player.posY = 10
  };
  
  break;
  case 13: str = "You can pick up other objects as well. Try picking up a dynamite.";break;
  case 14: str = "You can pick up other objects as well. Try picking up a dynamite.";break;
  default: str = "Something went wrong!";break;
 }
 scr_text(str,1,mouse_x,mouse_y);
incrementer++