if(!(global.game_paused && knockback_distance_remaining <= 0)) 
{
// Keyboard movement
if(!locked){
var _keydirx = 0;
var _keydiry = 0;

if keyboard_check(vk_left) || keyboard_check(ord("A")) _keydirx --;
if keyboard_check(vk_right) || keyboard_check(ord("D")) _keydirx ++;
if keyboard_check(vk_up) || keyboard_check(ord("W")) _keydiry --;
if keyboard_check(vk_down) || keyboard_check(ord("S")) _keydiry ++;

if(keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(vk_up) || keyboard_check(vk_down) || keyboard_check(ord("W")) || keyboard_check(ord("A")) || keyboard_check(ord("S")) || keyboard_check(ord("D")))
{
	var _d = point_direction(0, 0, _keydirx, _keydiry);
	send_player_character(self, x + lengthdir_x(run_speed, _d) * 5, y + lengthdir_y(run_speed, _d) * 5);
	mouse_command = false;
	event_fire("move_key_down");
}
}

var _old_sprite = sprite_index;

script_execute(state, self);

if(_old_sprite != sprite_index) local_frame = 0;

player_animate_sprite();




bounce_t += bounce_speed;
if (bounce_t > 360) bounce_t -= 360;
bounce_magnitude = max(0, bounce_magnitude - bounce_friction);


shake_t = max(0, shake_t - 1);
shaking = shake_t != 0;
flash = max(0, flash - 0.05);
invulnerable = max(0, invulnerable - 1);


hop_t = min(hop_t + hop_speed, pi);
z = hop_height*sin(hop_t);


} else if dead flash = max(0, flash - 0.05);