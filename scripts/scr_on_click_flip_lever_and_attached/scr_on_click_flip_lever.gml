function on_click_flip_lever(_lever, _gate_id){
	with(_lever)
	{
		if(flipped && single_use) return;
		flipped = !flipped;
		update_sprite();
	}
	with(_gate_id)
	{
		closed = !closed;
	}
	audio_play_sound(snd_microwave_click, 0,  false);
	update_all_gates(_gate_id);
}