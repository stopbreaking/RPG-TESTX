if(!restart) 
{
	update_all_gates(obj_gate_blue);
	update_all_gates(obj_gate_cyan);
	update_all_gates(obj_gate_orange);
	update_all_gates(obj_gate_white);
	update_all_gates(obj_gate_yellow);
	update_all_gates(obj_gate_red);
	update_all_gates(obj_gate_pink);
	update_all_gates(obj_gate_green);
	update_all_gates(obj_gate_grey);
	save_room_puzzle_state();
	save_room_state();
	if(instance_exists(obj_guy)) global.game_data.player_z_level = obj_guy.z_level;
}
global.game_data.buttons_pressed = 0;
global.mini_text_boxes = 0;

show_debug_message("Room End");
show_debug_message(global.level_started);