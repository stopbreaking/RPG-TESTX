sprite_idle = spr_signpost_sideeye_happy;

on_mouse_enter_args = [self, sprite_highlight];
on_mouse_exit_args = [self, sprite_idle];

/*
var _point = noone;
var _id = link_id;
var _o = self;
with(obj_playerchar_interact_point_1) {
	if (parent_id == _id) {
		_point = self;
		parent_obj = _o; 	
	}
} 

interact_point = _point;
*/
dialogue_array = array_create(2, []);

dialogue_array[0] = [
	[lock_player],
	[lock_hand_function],
	[camera_snap_to_object, [obj_clickable_trigger_cutscene]],
	[cutscene_set_portrait, [spr_portrait_sign]],
	[0, cutscene_set_text, ["Don't say I didn't warn you.."]],
	[cutscene_set_portrait, [spr_portrait_guy_neutral_talking]],
	[0, cutscene_set_text, ["You're actively trying to goad me in this direction."]],
	[cutscene_set_portrait, [spr_portrait_sign]],
	[0, cutscene_set_text, ["..."]],
	[change_sprite, [me, spr_signpost_sideeye_happy]],
	[0, cutscene_set_text, ["Yeah.."]],
	[increment_dialogue, [obj_clickable_trigger_cutscene]],
	[camera_snap_to_player],
	[destroy_cutscene_gui],
	[unlock_hand_function],
	[unlock_player],
]; 
dialogue_array[1] = [
	[lock_player],
	[lock_hand_function],
	[camera_snap_to_object, [obj_clickable_trigger_cutscene]],
	[cutscene_set_portrait, [spr_portrait_guy_neutral]],
	[0, cutscene_set_text, ["..."]],
	[0, cutscene_set_text, ["(Why am I still considering this???)"]],
	[change_sprite, [me, spr_signpost_sideeye_happy]],
	[camera_snap_to_player],
	[destroy_cutscene_gui],
	[unlock_hand_function],
	[unlock_player],
]; 