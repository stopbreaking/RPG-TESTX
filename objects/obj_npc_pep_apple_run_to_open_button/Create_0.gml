sprite_index = spr_npc_apple_walkin_1;

var _button = 
{
	x: 0,
	y: 0,
}
with(obj_button)
{
	if(sprite_index == spr_button) {
		_button.x = x;
		_button.y = y;
		}
}

move_towards_point(_button.x, _button.y, 3);