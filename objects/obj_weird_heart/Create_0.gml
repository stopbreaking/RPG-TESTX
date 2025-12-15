snap = true;
snapx = x;
snapy = y;
snap_ease = 100;
push_force_eased = 25;


numbah = 4 - instance_number(obj_heart);

function update()
{
	if(global.player_health < numbah) sprite_index = spr_gui_heart_empty;
}

update();