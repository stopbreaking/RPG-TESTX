// @desc Layer management?
show_debug_message("Room Start");
show_debug_message(global.level_started);

layer_set_visible("Collision_Tiles", false);

global.buttons_pressed = 0;

if(!global.room_change.same_room_target) {

if (global.room_change.player_tp) with(obj_guy) 
{
	if(global.room_change.use_id)
	{	
		var _id = global.room_change.link_id;
		var _snap = noone;
		with (obj_point)
		{
			if(link_id == _id) _snap = self
		}
		if(instance_exists(_snap) && _snap != noone)
		{
			global.room_change.start_x = _snap.x;
			global.room_change.start_y = _snap.y;
		} else 
		{
			show_debug_message("WARNING: Point ID {0} does not exist!!", global.room_change.link_id);
			global.room_change.player_tp = false;
		}
		global.room_change.use_id = false;
	}
}
if (global.room_change.player_tp) with(obj_guy) {
	if(global.room_change.walkup) 
	{
		x = global.room_change.start_x - global.room_change.walkup_h;
		y = global.room_change.start_y - global.room_change.walkup_v;
		send_player_character(self, global.room_change.start_x, global.room_change.start_y);
		global.room_change.walkup_h = 0;
		global.room_change.walkup_v = 0;
		set_player_state_running(self);
		start_cutscene([
		[lock_hand_function],
		[lock_player_control],
		[0, wait_for_player_idle],
		[end_walkup],
		[cutscene_exit],
		]);
	}
	else {
		x = global.room_change.start_x;
		y = global.room_change.start_y;
	}
	global.room_change.player_tp = false;
}

if global.room_change.player_retains_direction with(obj_guy) 
{
	direction_moving = global.room_change.saved_direction;
	last_dir = global.room_change.saved_last_dir;
	mouse_command = global.room_change.mouse_command;
	global.room_change.player_retains_direction = false;
}

if global.room_change.camera_tp with(obj_camera) 
{
	x = global.room_change.start_x;
	y = global.room_change.start_y;
}

load_room_state();
load_room_puzzle_state();
if(global.loading)
{
	load_room();
	global.loading = false;
	global.game_paused = false;
}

restart = false;
} else 
{
	room_goto(global.room_change.previous_room); // The bug I was trying to fix with this was caused by something else
	global.room_change.same_room_target = false; // ... But the other bug that came up *might* be fixed by this, and I'm to lazy to delete and test
}
