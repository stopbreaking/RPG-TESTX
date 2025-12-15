function queue_animation_change(_instance, _sprite){
	with(_instance)
	{
		change_animation_on_end = true;
		next_sprite = _sprite;
	}
}