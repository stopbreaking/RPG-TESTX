function change_sprite(_inst, _spr, _override_index = false){
	with(_inst) 
	{
		sprite_index = _spr;
		if(!_override_index) image_index = 0; // Make sure this overrides animation change as well just in case
		change_animation_on_end = false;
	}
}