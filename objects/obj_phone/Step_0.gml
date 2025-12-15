if(distance_to_point(obj_guy.x, obj_guy.y) < alarm_radius) 
{
	if(!trigger) y_origin = y;
	trigger = true;
}
if(trigger){

image_index = 1;



if(!jumped)
{
	if(!opened) 
	{
		audio_play_sound(snd__edited1__ruben_uitenweerde__pistol_holstering, 3, false, 1, 0, 0.5);
		opened = true;
	}
	
	
	t = min(pi, t + t_speed);
	y = y_origin - jump_height*sin(t);
	if(t >= pi) jumped = true;
} else{ 
	shake_remaining = max(0, shake_remaining - ((1/shake_length)*shake_magnitude));
	if(shake_remaining <= 0)
	{
		timer +=  1
		if(timer >= time_between_rings)
		{
			audio_play_sound(snd_phone_ring, 3, false, 1, 0, 2);
			shake_remaining = max_shake_remaining;
			timer = 0;
		}
	} else 
	{
		x += random_range(-shake_magnitude, shake_magnitude);
		y += random_range(-shake_magnitude, shake_magnitude);
	}

if(place_meeting(x, y, obj_guy)) 
{
	audio_play_sound(snd__edited2__ruben_uitenweerde__pistol_holstering, 3, false);
	audio_stop_sound(snd_phone_ring);
	fulfill_quest("q_use_phone")
	// pickup fone!
	//cutscene(0);
	//var _sign_ref = [instance_by_name, "signpost"] // TODO, program a case where this can easily be passed and parsed!
	var _sign_ref = obj_npc_signpost;
	// I can totally do this but I don't want to right now :P
	// The ultimate goal is to not have to rea-initialize everything in creation code. But idk.
	start_cutscene([
		[cutscene_enter],
		[set_player_sprite_phonecall],
		[camera_reset_zoom],
		[cutscene_set_portrait, [spr_portrait_telephone]],
		[0, cutscene_set_text, ["&.&.&.&"]],
		[cutscene_set_portrait, [spr_portrait_guy_neutral_talking]],
		[start_cutscene_phonecall],
		[0, cutscene_set_text, ["Hello?"]],
		[cutscene_set_portrait, [spr_portrait_telephone]],
		[switch_sprite, [_sign_ref, spr_signpost_sideeye_happy]],
		[0, cutscene_set_text, ["Hello kind sir may I ask you a question?"]],
		[cutscene_set_portrait, [spr_portrait_guy_neutral_talking]],
		[0, cutscene_set_text, ["Uh,; sure."]],
		[cutscene_set_portrait, [spr_portrait_telephone]],
		[delay, [25, switch_sprite, [_sign_ref, spr_signpost_sideeye_happyx]]],
		[0, cutscene_set_text, ["Is your&& refrigerator running?"]],
		[cutscene_set_portrait, [spr_portrait_guy_neutral_talking]],
		[0, cutscene_set_text, ["Sure."]],
		[cutscene_set_portrait, [spr_portrait_telephone]],
		[switch_sprite, [_sign_ref, spr_signpost_idle]],
		[0, cutscene_set_text, ["Really?&& \nYour refrigerator is& RUNNING?"]],
		[cutscene_set_portrait, [spr_portrait_guy_neutral_talking]],
		[0, cutscene_set_text, ["Yeah, sure."]],
		[cutscene_set_portrait, [spr_portrait_telephone]],
		[shake_obj, [_sign_ref, 15]],
		[switch_sprite, [_sign_ref, spr_signpost_sideeye_happyx_elated]],
		[0, cutscene_set_text, ["With little feet??"]],
		[cutscene_set_portrait, [spr_portrait_guy_neutral_talking]],
		[0, cutscene_set_text, ["I really don't have a refrigerator."]],
		[cutscene_set_portrait, [spr_portrait_telephone]],
		[shake_obj, [_sign_ref, 15]],
		[switch_sprite, [_sign_ref, spr_signpost_elated_1]],
		[0, cutscene_set_text, ["Then you'd better go CATCH IT!!!"]],
		[cutscene_dismiss_letterbox],
		[cutscene_set_portrait, [spr_portrait_telephone]],
		[audio_play_sound, [snd_phone_hangup_beep,0,false, 1, 0, 0.5]],
		[0, cutscene_set_text, ["*Beeeepp*"]],
		[cutscene_set_portrait, [spr_portrait_guy_neutral]],
		[0, cutscene_set_text, [";.;.;."]],
		[cutscene_set_portrait, [spr_portrait_guy_neutral_talking]],
		[camera_snap_to_player],
		[camera_reset],
		[0, cutscene_set_text, ["Okay,; that was pretty funny."]],
		[0, cutscene_set_text, ["I suppose I'm just a wet blanket sometimes."]],
		[camera_reset],
		[cutscene_dismiss_and_close],
		[cutscene_exit],
	]);
	instance_destroy();
}
}
}