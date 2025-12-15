function cutscene(_id){ // More like an Event Chain or Action Queue or something.. 
	// Unecessary now as event_listener objects are better to define these through.
	show_debug_message("start");
	show_debug_message(global.game_paused);
	switch(_id)
	
	{
		case 0: {  // First phonecall
		start_cutscene_phonecall();
		/*
		new_cutscene(
		[
			[transition_bg_music_simple, [snd__benboncan__sandy_beach, snd_aske_drumbeat]],
			[cutscene_set_portrait, [spr_portrait_telephone]],
			[hold, cutscene_set_text, ["TESTING, TESTING, ONE-TWO ONE-TWO"]],
			[hold, cutscene_set_text, ["HELLO?"]],
			[hold, cutscene_set_text, ["Is anybody there??"]],
			[cutscene_set_portrait, [spr_portrait_template, spr_portrait_template]],
			[audio_sound_gain, [snd_aske_drumbeat, 0, 1000]],
			[hold, cutscene_set_text, ["Marcus?"]],
			[cutscene_set_portrait, [spr_portrait_telephone, spr_portrait_telephone]],
			[hold, cutscene_set_text, ["YOU'RE ALIVE????"]],
			[cutscene_set_portrait, [spr_portrait_template, spr_portrait_template]],
			[transition_bg_music_simple, [snd_aske_drumbeat, snd_timouse_loop25]],
			[hold, cutscene_set_text, ["... yeah."]],
			[cutscene_set_portrait, [spr_portrait_telephone, spr_portrait_telephone]],
			[hold, cutscene_set_text, ["WH- TH- THAT'S GREAT!! ... THATS AMAZING!"]],
			[cutscene_set_portrait, [spr_portrait_template, spr_portrait_template]],
			[hold, cutscene_set_text, ["You said this would be safe..."]],
			[cutscene_set_portrait, [spr_portrait_telephone, spr_portrait_telephone]],
			[hold, cutscene_set_text, ["*BOOOOOOOOOOOOOOOOOOOOOMMMMMMMMMMMPFFHFHFHHFHFFFFFFFFFFFFFF*"]],
			[hold, cutscene_set_text, ["Haha, I did, didn't I?"]],
			[cutscene_set_portrait, [spr_portrait_template, spr_portrait_template]],
			[hold, cutscene_set_text, ["Where am I?"]],
			[cutscene_set_portrait, [spr_portrait_telephone, spr_portrait_telephone]],
			[hold, cutscene_set_text, ["WHAT?"]],
	        [cutscene_set_portrait, [spr_portrait_template, spr_portrait_template]],
			[hold, cutscene_set_text, ["I said-?"]],
			[cutscene_set_portrait, [spr_portrait_telephone, spr_portrait_telephone]],
			[hold, cutscene_set_text, ["WHAAT?"]],
			[cutscene_set_portrait, [spr_portrait_guy_angry, spr_portrait_guy_angry]],
			[hold, cutscene_set_text, ["WHY ARE YOU YELLING??"]],
			[cutscene_set_portrait, [spr_portrait_telephone, spr_portrait_telephone]],
			[hold, cutscene_set_text, ["YOU'RE ALIVE!! WE'RE BILLIONAIRES!!"]],
			[cutscene_set_portrait, [spr_portrait_template, spr_portrait_template]],
			[hold, cutscene_set_text, ["H-huh??!"]],
			[cutscene_set_portrait, [spr_portrait_telephone, spr_portrait_telephone]],
			[hold, cutscene_set_text, ["Millions at least!"]],
			[cutscene_set_portrait, [spr_portrait_template, spr_portrait_template]],
			[hold, cutscene_set_text, ["What's-"]],
			[cutscene_set_portrait, [spr_portrait_telephone, spr_portrait_telephone]],
			[hold, cutscene_set_text, ["CHAMPAGNE! IT'S IN THE FRIDGE I- CAN- CAN- can you take this for me?"]],
			[hold, cutscene_set_text, ["..."]],
			[cutscene_set_portrait, [spr_portrait_telephone, spr_portrait_telephone]],
			[hold, cutscene_set_text, ["Hello?"]],
			[cutscene_set_portrait, [spr_portrait_template, spr_portrait_template]],
			[hold, cutscene_set_text, ["Max?"]],
			[cutscene_set_portrait, [spr_portrait_telephone, spr_portrait_telephone]],
			[hold, cutscene_set_text, ["You're alive?"]],
			[cutscene_set_portrait, [spr_portrait_guy_angry, spr_portrait_guy_angry]],
			[hold, cutscene_set_text, ["You said this would be safe!!"]],
			[cutscene_set_portrait, [spr_portrait_telephone, spr_portrait_telephone]],
			[hold, cutscene_set_text, ["There was an explosion, where you were standing. Everything's on fire.."]],
			[hold, cutscene_set_text, ["(Break out the bubbly!)"]],
			[hold, cutscene_set_text, ["*Pop* *SMACK* *SPLAT* *SQUEAK* *SQUEAK* *SQUEAK* *CRASH* *TUMBLING AND BREAKING GLASS*"]],
			[cutscene_set_portrait, [spr_portrait_template, spr_portrait_template]],
			[hold, cutscene_set_text, ["Hello?"]],
			[cutscene_set_portrait, [spr_portrait_telephone, spr_portrait_telephone]],
			[hold, cutscene_set_text, ["(Holy shit dude are you okay! My bad!)"]],
			[hold, cutscene_set_text, ["..."]],
			[hold, cutscene_set_text, ["(Why were you standing there, though??)"]],
			[cutscene_set_portrait, [spr_portrait_template, spr_portrait_template]],
			[hold, cutscene_set_text, ["... hello??"]],
			[cutscene_set_portrait, [spr_portrait_telephone, spr_portrait_telephone]],
			[cutscene_set_text, ["(Are you even..)"]],
			[cutscene_set_portrait, [spr_portrait_guy_angry, spr_portrait_guy_angry]],
			[hold, cutscene_set_text, ["HELLO?!"]],
			[cutscene_set_portrait, [spr_portrait_telephone, spr_portrait_telephone]],
			[hold, cutscene_set_text, [".. Yo!"]],
			[cutscene_set_portrait, [spr_portrait_template, spr_portrait_template]],
			[hold, cutscene_set_text, ["Marcus!"]],
			[cutscene_set_portrait, [spr_portrait_telephone, spr_portrait_telephone]],
			[hold, cutscene_set_text, ["Dude I think you might be concussed or something, that's not my name."]],
			[cutscene_set_portrait, [spr_portrait_guy_angry, spr_portrait_guy_angry]],
			[hold, cutscene_set_text, ["Where am I?!?!"]],
			[cutscene_set_portrait, [spr_portrait_telephone, spr_portrait_telephone]],
			[hold, cutscene_set_text, ["... Geographically?"]],
			[cutscene_set_portrait, [spr_portrait_guy_angry, spr_portrait_guy_angry]],
			[hold, cutscene_set_text, ["YES."]],
			[cutscene_set_portrait, [spr_portrait_telephone, spr_portrait_telephone]],
			[hold, cutscene_set_text, ["Are you at 422 Adams Pier?"]],
			[cutscene_set_portrait, [spr_portrait_guy_angry, spr_portrait_guy_angry]],
			[hold, cutscene_set_text, ["... YOU THINK I'D ASK IF I WAS????"]],
			[cutscene_set_portrait, [spr_portrait_telephone, spr_portrait_telephone]],
			[hold, cutscene_set_text, ["Well I'm sure you're still somewhere on Earth."]],
			[hold, cutscene_set_text, ["I'll get some gps stuff and call you back."]],
			[audio_stop_sound, [snd_aske_drumbeat]],
			[cutscene_close_camera2],
			[camera_reset],
			[hold, cutscene_set_text, ["*beep*"]],
			[cutscene_set_portrait, [spr_portrait_guy_neutral, spr_portrait_guy_neutral]],
			[hold, cutscene_set_text, ["..."]],
			[set_player_state_idle],
			[cutscene_set_portrait, [spr_portrait_template, spr_portrait_template]],
			[hold, cutscene_set_text, ["He hung up on me..."]],
			[hold, cutscene_set_text, ["So what? I'm on an island?"]],
			[hold, cutscene_set_text, ["Where was I before?"]],
			[cutscene_set_portrait, [spr_portrait_guy_neutral, spr_portrait_guy_neutral]],
			[hold, cutscene_set_text, ["..."]],
			[cutscene_set_portrait, [spr_portrait_template, spr_portrait_template]],
			[hold, cutscene_set_text, ["Is.."]],
			[hold, cutscene_set_text, ["Is that a door?"]],
			[transition_bg_music_simple, [snd_timouse_loop25, snd__benboncan__sandy_beach]],
			[unlock_player],
			[set_player_state_idle],
			[c_set_textbox_visibility, [false]],
			[cutscene_dismiss_letterbox],
		]); */
		cutscene_call_next_action(); // Start cutscene
		break;
		}
		case 1: // Falling through doorway to void
		{
			start_cutscene_blank_settings();
			new_cutscene([
				[cutscene_set_portrait, [spr_portrait_template]],
				[hold, cutscene_set_text, ["YYYAAAAAAAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH"]],
				[hold, cutscene_set_text, ["AAAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH"]],
				[hold, cutscene_set_text, ["GAAAAAAAAAAHAHAHHAHHAHAHHAHHAHAHAHHAHAHHAHAHHAHHAH"]],
				[hold, cutscene_set_text, ["AAGHAHGAHGHGHAGHHAGHHGAHGHAHGHAAAHAGHAHGAHGHAHGHGHAGHAGH"]],
				[hold, cutscene_set_text, ["EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE"]],
				[hold, cutscene_set_text, ["EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE"]],
				[hold, cutscene_set_text, ["EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE"]]
			]);
			
			cutscene_call_next_action(); // Start cutscene
			break;
		}
		case 2: { //Discovers 422!
			start_cutscene_blank_settings();
			
			new_cutscene([
				[lock_player],
				[hold, cutscene_set_text, ["Huh?"]],
				[set_camera_follow, [obj_door_622]],
				[hold, cutscene_wait, [0.3]],
				[hold, cutscene_set_text, ["YO!"]],
				[cutscene_reset]
			]);
			cutscene_call_next_action(); // Start cutscene
			break;
			}
		case 3: {
		start_cutscene_blank_settings();
		new_cutscene(
			[
				[lock_player],
				//[shift_object, [obj_guy, 64, 0]],
				[set_player_state_standing],
				[cutscene_set_portrait, [spr_portrait_guy_neutral, spr_portrait_guy_neutral]],
				[hold, cutscene_set_text, ["..."]],
				[cutscene_set_portrait, [spr_portrait_template, spr_portrait_template]],
				[hold, cutscene_set_text, ["It's locked??"]],
				[hold, cutscene_set_text, ["Hey!!"]],
				[hold, cutscene_set_text, ["Marc sent me!"]],
				[hold, cutscene_set_text, ["I have pizza and stuff!"]],
				[hold, cutscene_set_text, ["Help!!"]],
				[cutscene_set_textbox_player_control, [false]],
				[create_instance_at_object, [obj_lock_spawn, obj_guy]],
				[smack_player_2d, [point_direction(0, 0, 1, -3), 15]],
				[cutscene_switch_text, ["Ahg!"]],
				[hold, cutscene_wait, [1]],
				[set_camera_follow, [obj_guy]],
				[create_instance_at_object, [obj_lock_spawn2, obj_guy]],
				[smack_player_2d, [point_direction(0, 0, 1, -6), 20]],
				[cutscene_switch_text, ["Wah?!"]],
				[hold, cutscene_wait, [1]],
				[create_instance_at_object, [obj_lock_spawn3, obj_guy]],
				[smack_player_2d, [point_direction(0, 0, 1, -12), 30]],
				[cutscene_switch_text, ["Ooof!"]],
				[hold, cutscene_wait, [3]],
				[cutscene_set_textbox_player_control, [true]],
				[hold, cutscene_switch_text, ["..."]],
				[hold, cutscene_set_text, ["Ow.."]],
				[set_textbox_alignment, [CUTSCENE_TEXTBOX_ALIGNMENT.TOP]],
				[hold, cutscene_set_text, ["Eh?"]],
				[lock_hand_function],
				[unlock_player],
				[send_player_character_relative, [obj_guy, -100, 0]],
				[lock_player]
				[set_camera_offset, [CAMERA_OFFSET.LEFT]],
				[hold, cutscene_set_text, ["What is this?!??!"]],
				[hold, cutscene_set_text, ["Locks?"]],
				[hold, cutscene_set_text, ["Locks.."]],
				[hold, cutscene_set_text, ["Is there..."]],
				[set_camera_offset, [CAMERA_OFFSET.RIGHT]],
				[unlock_player],
				[send_player_character_relative, [obj_guy, 10, 0]],
				[hold, cutscene_set_text, ["There is!"]],
				[lock_player],
				[hold, cutscene_set_text, ["..."]],
				[hold, cutscene_set_text, ["Who wrote this??"]],
				[hold, cutscene_set_text, ["Whatever, I guess I signed up for this.."]],
				//[hold, cutscene_set_text, ["Foolishness or no."]],
				[unlock_hand_function],
				[cutscene_reset],
				[camera_reset]
			]);
			cutscene_call_next_action();
		break; }
		case 4: {
		new_cutscene(
		[
			[lock_player],
			[lock_hand],
			[move_object, [obj_hand, 352, 128]],
			[hold, new_narrator_text_normal, ["Are you okay?"]],
			[hold, new_narrator_text_normal, ["You seem.. Disarrayed."]],
			[hold, new_narrator_text_normal, [":/"]],
			[hold, new_narrator_text_normal, ["This could be trouble."]],
			[hold, new_narrator_text_normal, ["Let's see.. "]],
			//[hold, new_narrator_text_normal, ["See this?"]],
			[hold, open_mask, ["hand"]],
			[hold, new_narrator_text_normal, ["This is your hand."]],
			[hold, new_narrator_text_normal, ["H-A-N-D"]],
			[hold, new_narrator_text_normal, ["Its a sort of, sticky pad with a bunch of \npokers sticking out of it. . . that can \nbe bent and are also sticky.."]], // fix
			[hold, new_narrator_text_normal, ["Its multipurpose!"]],
			[hold, new_narrator_text_normal, ["But, the big one is grabbing things."]],
			[unlock_hand_function],
			[create_text_prompt, ["[mouse1]", prompt_check_hand_state, [hand_state_grabbing]]],
			[hold, wait_for_prompt],
			[hold, new_narrator_text_normal, ["And Moving around."]],
			[unlock_hand_move],
			[hold, new_narrator_text_normal, ["[Mouse]"]],
			[hold, cutscene_wait, [0.5]],
			[create_text_prompt, ["Try grabbing these crosshairs.", prompt_click_things, [4]]],
			[spawn, [obj_clickme_red, 32, 32]],
			[hold, cutscene_wait, [1]],
			[spawn, [obj_clickme_green, 32, RESOLUTION_H - 32]],
			[hold, cutscene_wait, [1]],
			[spawn, [obj_clickme_blue, RESOLUTION_W - 32, 32]],
			[hold, cutscene_wait, [1]],
			[spawn, [obj_clickme_pink, RESOLUTION_W - 32, RESOLUTION_H - 32]],
			[unlock_hand],
			[hold, wait_for_prompt],
			[hold, new_narrator_text_normal, ["Now. . . "]],
			[spawn, [obj_bodypart_head, 192, 128]],
			[spawn, [obj_bodypart_chest, 544, 128]],
			[spawn, [obj_bodypart_hands, 192, 544]],
			[spawn, [obj_bodypart_legs, 544, 544]],
			[hold, new_narrator_text_normal, ["These are your other appendages."]],
			[hold, new_narrator_text_normal, ["They're a bit dry! But I assure you, \n everything is here."]],
			[hold, new_narrator_text_normal, ["And this,"]],
			[spawn, [obj_guy_deadprint, 352, 480]],	
			[hold, new_narrator_text_normal, ["Is where they're supposed to go."]],
			[hold, new_narrator_text_normal, ["I think."]],
			//[hold, new_narrator_text_normal, ["No way to know for sure."]],
			[create_text_prompt, ["Put them back together, again.", prompt_drag_bodyparts, []]],
			[hold, wait_for_prompt],
			[hold, new_narrator_text_normal, ["It's you!"]],
			[hold, new_narrator_text_normal, ["First try, too.."]],
			[hold, new_narrator_text_normal, ["Do the legs work?"]],
			[unlock_player],
			[create_text_prompt, ["[Mouse1]", prompt_check_hand_state, [hand_state_grabbing]]],
			[hold, wait_for_prompt],
			[hold, new_narrator_text_normal, ["They do!!"]],
			[create_text_prompt, ["Step in this circle!", prompt_circle_count, [1]]],
			[spawn, [obj_coolcircle, RESOLUTION_W / 2, RESOLUTION_H/4]],
			[hold, wait_for_prompt],
			[create_text_prompt, ["Step on this bug! [RMB to run]", prompt_squash_the_bug]],
			[spawn, [obj_bug_alive, RESOLUTION_W/2, 3*RESOLUTION_H/4]],
			[hold, wait_for_prompt],
			[create_text_prompt, ["Step over this landmine!", prompt_wait_for_explosion]],
			[spawn, [obj_landmine, RESOLUTION_W/4, 3*RESOLUTION_H/4]],
			[hold, wait_for_prompt],
			[hold, new_narrator_text_normal, ["Lol"]],
			[hold, new_narrator_text_normal, ["Lmao"]],
			[hold, new_narrator_text_normal, ["Thats so cool.."]],
			[hold, new_narrator_text_normal, [". . ."]],
			[hold, new_narrator_text_normal, ["Okay."]],
			[hold, new_narrator_text_normal, ["I have to skip over a few things."]],
			[hold, new_narrator_text_normal, ["Before you go,"]],
			[hold, new_narrator_text_normal, ["We can bring you back \n however many times you need."]],
			[hold, new_narrator_text_normal, ["Just follow the doors."]],
			[room_goto, [rm_start]]
		]);
		cutscene_call_next_action();
		break; }
		case 5: {
			new_cutscene([
			[pause_game],
			[camera_snap_id, ["door"]],
			[hold, cutscene_wait, [1]],
			[destroy_by_id, [obj_handwall, "handwall_1"]],
			[hold, cutscene_wait, [0.4]],
			[camera_snap_id, ["passage"]],
			[hold, cutscene_wait, [1]],
			[destroy_by_id, [obj_handwall, "handwall_2"]],
			[hold, cutscene_wait, [0.4]],
			[destroy_by_id, [obj_handwall, "handwall_3"]],
			[hold, cutscene_wait, [0.4]],
			[force_buttons_down],
			[destroy_all_pots],
			[quick_replace, [obj_npc_pep_apple, obj_npc_pep_apple_fulfilled]],
			//[quick_replace, [obj_npc_pep_apple_run_to_open_button, obj_npc_pep_apple_fulfilled]],
			[camera_snap_to_player],
			[reset_player_movement],
			[unpause_game],
			]);
			cutscene_call_next_action();
		break;
		} 
		case 6: {
			new_cutscene([
			[quick_replace, [obj_npc_pep_apple, obj_npc_pep_apple_run_to_open_button]],
			]);
			cutscene_call_next_action();
			break;
		}
		case 7: {
			new_cutscene([
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
			[unpause_game],
			]);
			cutscene_call_next_action();
		break;
		} 
	default:
	{
		show_debug_message("Missing cutscene ID!");
		break;
	}
	}
}