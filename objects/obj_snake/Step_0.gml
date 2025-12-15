if(global.game_paused)
{

} 
else 
{
if(knockback){
	move_towards_point(obj_guy.x, obj_guy.y, (-1)*knockback_speed);
	
	z = sin(((remaining_knockback / knockback_distance) * pi)) * knockback_height; 
	remaining_knockback = max(0, remaining_knockback - knockback_speed);
	if(remaining_knockback == 0) 
	{
		knockback = false;
		hspeed = 0;
		vspeed = 0;
	}
} else if(charging_up) 
{
	hspeed = 0;
	vspeed = 0;
	charge ++;
	if(charge == attack_telegraph_requirement) 
	{
		// blink red before jumping???
		flash = 3;
	}
	if(charge >= attack_telegraph_requirement) {
		// Jump at the player
		attacking = true;
		charging_up = false;
		attack_speed = attack_speed_max;
		attack_count --;
		if(attack_count <= 0)
		{
			attack_cooldown = attack_cooldown_max;
			attack_count = attack_count_max;
			charge = 0;
		}
	}
	// multiple attacks with same charge??? cool effect, just don't reset charge x attacks later.
	
	
} else if (attacking)
{
	move_towards_point(obj_guy.x, obj_guy.y, attack_speed);
	attack_speed = max(0, attack_speed - attack_speed_friction);
	 if (place_meeting(x + hspeed, y + vspeed, obj_guy)) {
		hurt_player(point_direction(0, 0, hspeed, vspeed), attack_force, attack_damage);
	 }
	if(attack_speed == 0)
	{
		attack_cooldown --;
		if(attack_cooldown <= 0) attacking = false;
	}
}
else
{
	if(invincibility == 0) 
	{
		if(mouse_check_button(1) && obj_hand.stick && place_meeting(x, y, obj_hand))
		{
			// damage animation + smack sound
			hp -= 1;
			invincibility = invincibility_reset;
			flash = 1;
			invincibility = 5;
			knockback = true;
			remaining_knockback = knockback_distance;
		}
		
		move_towards_point(obj_guy.x, obj_guy.y, move_speed);
		if(distance_to_object(obj_guy) < attack_radius)
		{
			charging_up = true;
		}
	}

	if (hp <= 0) 
	{
		//explosive particle effect
		instance_destroy();
	}
}
flash = max(flash - 0.05, 0);
invincibility = max(invincibility - 1, 0);

check_collisions_objects();
depth = -y;
}