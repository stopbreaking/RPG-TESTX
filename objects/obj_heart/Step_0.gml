x = obj_guy.x + offset_x;
y = obj_guy.y + offset_y;

depth = -obj_guy.y;


if global.game_data.display_hp != prev_display_hp
{
	prev_display_hp = global.game_data.display_hp;
	if instance_exists(active_animation) instance_destroy(active_animation);
	if global.game_data.display_hp == true active_animation = animate_value_doublelerp(set_alpha, self, 0, 1, fade_ease);
	else animate_value_doublelerp(set_alpha, self, 1, 0, fade_ease);
}