direction = point_direction(x, y, obj_guy.x, obj_guy.y - 30);

image_index = round(direction/31);

if(point_distance(x, y, obj_guy.x, obj_guy.y) < range) {
	activated = true;
	sprite_index = spr_big_eyee_roll_1;
	cooldown --;
	if(cooldown <= 0)
	{
		var _dir = direction;
		
		var _eye_roll_circumference_x = x + lengthdir_x(eye_roll_radius, direction);
		var _eye_roll_circumference_y = y + lengthdir_y(eye_roll_radius, direction);
		
		with(spawn(obj_fireball, _eye_roll_circumference_x, _eye_roll_circumference_y)) {
			direction = _dir;
			speed = 3;
			//image_xscale = 0.5;
			//image_yscale = 0.5;
		}
		cooldown = cooldown_reset;
	}
} else if activated sprite_index = spr_big_eyee_open;