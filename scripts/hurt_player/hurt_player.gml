/// @function approach(direct, force, damage)
/// @param _direct
/// @param _force
/// @param _damage

function hurt_player(_direct, _force, _damage){
	if(global.game_paused) return;
	if (obj_guy.invulnerable > 0) return; 
	
	global.game_data.player_health = max(0, global.game_data.player_health-_damage);
	with (obj_guy)
	{
			last_state = state;
			direction = _direct;
			knockback_distance_remaining = _force;
			screen_shake(10, 30);
			flash = 0.7;
			invulnerable = 60;
			if(state != player_state_falling) {
				state = player_state_knockback;
			}
			with(obj_heart) update();	
			if(global.game_data.player_health <= 0)
			{
				if(instance_exists(obj_gui_cutscene)) instance_destroy(obj_gui_cutscene);
				global.game_paused = true;
				depth = -1000;
				sprite_index = spr_guy_dead;
				hspd = 0;
				vspd = 0;
				camera_reset();
				create_death_screen_instance();
		}
	}
}