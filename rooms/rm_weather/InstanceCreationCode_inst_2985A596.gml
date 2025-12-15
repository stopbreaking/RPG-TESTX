dialogue_array[0] = 
[
	[cutscene_enter],
	[set_image_index, [self, 1]],
	[fulfill_quest, ["q_rainbow_door"]],
	[set_room_transition_junk, [link_id]],
	[fade_to_room, [rm_techdemo_passageway, 60, c_black, snd_door_beep]],
]