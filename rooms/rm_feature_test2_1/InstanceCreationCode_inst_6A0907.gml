dialogue_array = array_create(2, []);
dialogue_array[0] = [
	[cutscene_enter],
	[switch_sprite, [me, sprite_talking]],
	[cutscene_toggle_portrait_enabled],
	[turn_player_toward_object, [me]],
	[0, cutscene_set_text, ["I'm gonna get this meat someday. Then, the world will know my glory."]],
	[switch_sprite, [me, sprite_idle]],
	[npc_reset_sprite, [me]],
	[increment_dialogue, [me]],
	[cutscene_exit],
]

dialogue_array[1] = [
	[cutscene_enter],
	[switch_sprite, [me, sprite_talking]],
	[cutscene_toggle_portrait_enabled],
	[turn_player_toward_object, [me]],
	[0, cutscene_set_text, ["*Chomp *Chomp *Chomp *Chomp"]],
	[cutscene_toggle_portrait_enabled],
	[0, cutscene_set_text, ["He seems busy.."]],
	[switch_sprite, [me, sprite_idle]],
	[npc_reset_sprite, [me]],
	[cutscene_exit],
]