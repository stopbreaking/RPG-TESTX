function switch_sprite(_inst, _sprite) {
	with(_inst){
		anim_end = false;
		prev_sprite = sprite_index;
		sprite_index = _sprite;
		image_index = 0;
	}
}