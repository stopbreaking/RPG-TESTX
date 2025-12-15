global.player_health = 3;
global.camera2 = noone;
global.talker = noone;
global.mini_text_boxes = 0;
global.main_camera = noone;

global.flags = array_create(10, 0);
global.cutscene_on = false;

global.quests = ds_map_create();

global.text_speed = 0.5;

global.room_change = 
{
	player_tp: false,
	use_id: false,
	link_id: "default",
	start_x: -1,
	start_y: -1,
	camera_tp: false,
	camera_offset_x: -1,
	camera_offset_y: -1,
	player_retains_direction: false,
	saved_direction: 0,
	saved_last_dir: 0,
	mouse_command: false,
	walkup: false,
	walkup_h: 0,
	walkup_v: 0,
	previous_room : noone,
	same_room_target : false,
	temp_room : rm_black_void_temp_reset,
}

global.clickme_triggers = 0;
global.circle_count = 0;



global.level_started = false;

global.slider_count = 0;

global.mini_text_printed = false;

global.game_data = 
{
	level_started : false,
	display_hp : false,
	player_health : 3,
	player_z_level : 0,
	last_room : rm_init,
	map_depth : 0,
	room_data : {},
	room_data_persistent : {},
	room_puzzle_data_persistent : {},
	level_deaths : 0,
	gems_collected: 0,
	buttons_pressed: 0,
	level_data : 
	{
		name : "", 
		playtime : 0.000,
		gems_collected : 0
	}
}

global.loading = false;

global.level_data =
[
 {
	name: "xxxx demo",
	best_time: 0.000,
	gems_collected: 0,
	total_gems: 10,
	completed: false,
	starting_room: rm_black_void,
	preview_image: spr_blank_preview,
 }, /*
 {
	name: "0 - tutorial",
	best_time: 0.000,
	gems_collected: 0,
	total_gems: 10,
	completed: false,
	starting_room: rm_docks,
	preview_image: spr_blank_preview,
 },
  {
	name: "x - dock2",
	best_time: 0.000,
	gems_collected: 1,
	total_gems: 1,
	completed: true,
	starting_room: rm_dock_walkaround_1,
	preview_image: spr_blank_preview,
 },
   {
	name: "x - dockcutscene",
	best_time: 0.000,
	gems_collected: 0,
	total_gems: 10,
	completed: true,
	starting_room: rm_end_of_dock_alternate,
	preview_image: spr_blank_preview,
 },
 {
	name: "xx - NPC ROOM",
	best_time: 0.000,
	gems_collected: 0,
	total_gems: 10,
	completed: false,
	starting_room: rm_feature_test2_1,
	preview_image: spr_blank_preview,
 },

 {
	name: "1 - beaches",
	best_time: 0.000,
	gems_collected: 0,
	total_gems: 8,
	completed: false,
	starting_room: rm_beaches,
	preview_image: spr_beaches_preview,
 },
 {
	name: "2 - cliff",
	best_time: 0.000,
	gems_collected: 0,
	total_gems: 21,
	completed: false,
	starting_room: rm_bigwall_parallax,
	preview_image: spr_blank_preview,
 },
 {
	name: "3 - sand maze",
	best_time: 0.000,
	gems_collected: 0,
	total_gems: 23,
	completed: false,
	starting_room: rm_sand_maze_no_zombies,
	preview_image: spr_blank_preview,
 } */
]

