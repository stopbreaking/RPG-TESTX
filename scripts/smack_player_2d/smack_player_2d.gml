/// @function approach(direct, force, damage)
/// @param _direct
/// @param _force
/// @param _damage

function smack_player_2d(_direct, _force){
		with (obj_guy)
		{
			falling = false;
			//collisions = false;
			fall_speed = 0;
			smackdir = _direct;
			smack = _force;
			//screen_shake(10, 30);
			flash = 0.7;
			sprite_index = spr_guy_knockback;
			state = player_state_knockback_2d;
		}
	}
