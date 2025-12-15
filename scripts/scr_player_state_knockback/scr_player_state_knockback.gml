function player_state_knockback(_instance){ //Knockback sprite + no movement gives great freeze effect
	with(_instance){
		hspd = lengthdir_x(knockback_speed, direction - 180);
		vspd = lengthdir_y(knockback_speed, direction - 180);
	
		knockback_distance_remaining = max(0, knockback_distance_remaining - knockback_speed);
		
		if(global.game_data.player_health > 0) sprite_index = sprite_knockback;
		else sprite_index = sprite_dead;
		image_index =  round(direction/180);
	
		z = sin((knockback_distance_remaining / knockback_distance)* pi) * knockback_height;
	
		if(knockback_distance_remaining <= 0) 
		{
			
			if(global.game_data.player_health < 0)
				state = player_state_dead;
			else 
				state = last_state;
		}
		x += hspd;
		y += vspd;
		check_collisions_objects_prev_frame_horizontal();
		check_collisions_objects_prev_frame_vertical_exclusive();
		check_collisions_tiles_fixed_horizontal();
		check_collisions_tiles_fixed_vertical();
	}
}