function set_clickable_sprites(_inst, _s_idle, _s_highlight){
	with (_inst) {
		sprite_idle = _s_idle;
		sprite_highlight = _s_highlight;
		
		on_mouse_enter_args = [self, sprite_highlight];
		on_mouse_exit_args = [self, sprite_idle];
	}
}