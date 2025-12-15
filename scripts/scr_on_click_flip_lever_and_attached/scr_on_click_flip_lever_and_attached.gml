function on_click_flip_lever_and_attached(_lever, _gate_id, _additional_levers){ // Uses names now??? Good idea?? I can't pass instanceid into save file.
	show_debug_message("Correct function called!");
	show_debug_message(_lever);
	show_debug_message(_gate_id);
	show_debug_message(_additional_levers);
	
	var _id = instance_by_name(obj_lever, _lever);
	with(_id)
	{
		if(flipped && single_use) return;
		flipped = !flipped;
		update_sprite();
	}
	with(_gate_id)
	{
		closed = !closed;
	}
	for(var _i = 0; _i < array_length(_additional_levers); _i++)
	{
		_id = instance_by_name(obj_lever, _additional_levers[_i]);
		with(_id)
		{
			if(flipped && single_use) return;
			flipped = !flipped;
			update_sprite();
			
			with(on_click_args[1]) // Gate id
			{
				closed = !closed;
			}
			update_all_gates(on_click_args[1]);
		}
	}
	audio_play_sound(snd_microwave_click, 0,  false);
	update_all_gates(_gate_id);
}