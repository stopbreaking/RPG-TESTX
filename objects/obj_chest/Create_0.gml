/// @description Insert description here

// Inherit the parent event
event_inherited();

inst_pickup_obj = noone;

function create_popup(_inst)
{
	with(_inst) inst_pickup_obj = spawn(pickup_obj, obj_guy.x, obj_guy.y - 120);
}

function destroy_popup(_inst)
{
	with(_inst) {
		instance_destroy(inst_pickup_obj);
		inst_pickup_obj = noone;
	}
}

function get_popup(_inst) 
{
	with (_inst) return inst_pickup_obj;
}

dialogue_array[0] = [
	[cutscene_enter],
	[switch_sprite, [me, sprite_talking]],
	[cutscene_toggle_portrait_enabled],
	[cutscene_toggle_textbox_player_control],
	[turn_player_toward_object, [me]],
	[set_player_sprite_look_north],
	[camera_zoom, [2, 1000]],
	[cutscene_summon_letterbox],
	[camera_snap_to_object, [me]],
	[audio_play_sound, [snd_wooden_trunk_latch_1_183944, 0, false, 1, 0, 1.5]],
	[cutscene_set_text, ["You open the chest..."]],
	[0, cutscene_wait_frames, [60]],
	[cutscene_toggle_textbox_player_control],
	[0, wait_for_proceed],
	[set_camera_offset, [CAMERA_OFFSET.ITEM_GET]],
	[set_player_sprite_item_get],
	[create_popup, [me]],
	[audio_play_sound, [snd_ahh_cut, 0, false]],
	[0, cutscene_set_text, ["And find A SENSE OF ACCOMPLISHMENT!"]],
	[0, cutscene_set_text, ["You did it! You opened a chest!"]],
	[0, cutscene_set_text, ["We don't have anything interesting to for you to pick up yet, but we do have an endless supply of GOOD VIBES."]],
	[0, cutscene_set_text, ["Keep it up buddy. You're making it happen. :)"]],
	[fulfill_quest, ["q_open_chest"]],
	[set_player_state_idle],
	[destroy_popup, [me]],
	[camera_reset_zoom],
	[camera_snap_to_player],
	[clickable_set_disabled, [me]],
	[camera_reset],
	[cutscene_exit],
]