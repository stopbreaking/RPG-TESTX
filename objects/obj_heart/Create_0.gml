numbah = 4 - instance_number(obj_heart);

function update()
{
	if(global.game_data.player_health < numbah) sprite_index = spr_gui_heart_empty;
	if(global.game_data.player_health <= 0) instance_destroy();
}

update();

// Animate //
prev_display_hp = global.game_data.display_hp;
active_animation = noone;

if global.game_data.display_hp {
	active_animation = animate_value_doublelerp(set_alpha, self, 0, 1, fade_ease);
} else image_alpha = 0;