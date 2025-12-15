actions = [
			[pause_game],
			[camera_snap_id, ["middle"]],
			[hold, cutscene_wait, [1]],
			[destroy_by_id, [obj_handwall, "handwall_1"]],
			[hold, cutscene_wait, [0.4]],
			[destroy_by_id, [obj_handwall, "handwall_2"]],
			[hold, cutscene_wait, [0.4]],
			[destroy_by_id, [obj_handwall, "handwall_3"]],
			[hold, cutscene_wait, [0.4]],
			[destroy_by_id, [obj_handwall, "handwall_4"]],
			[hold, cutscene_wait, [0.4]],
			[force_buttons_down],
			[destroy_all_pots],
			[camera_snap_to_player],
			[reset_player_movement],
			[unpause_game]
		]