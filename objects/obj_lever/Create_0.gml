event_inherited();

function update_sprite()
{
	if(flipped && single_use) sprite_index =  spr_lever_grey_r;
	else if (flipped) sprite_index = sprite_r
	else sprite_index = sprite_l;
}

function flip_lever(_inst)
{
	with(_inst){
		if(flipped && single_use) {
			audio_play_sound(snd_click2, 0,  false);
			return;
		}
		flipped = !flipped;
		update_sprite();
		audio_play_sound(snd_microwave_click, 0,  false);
		event_fire(lever_event);
	}
}

dialogue_array[0] = [
	[flip_lever, [self]],
	[cutscene_exit]
];

update_sprite();

depth = -y;