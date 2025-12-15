function npc_start_talking(_inst, _sprite, _dialog){
	if(global.mini_text_boxes != 0) return;
	global.talker = _inst;
	switch_sprite(_inst, _sprite);
	with(_inst)
	{
		spr_locked = true;
	}
	global.mini_text_boxes = array_length(_dialog);
	on_click_new_text(_dialog);
}