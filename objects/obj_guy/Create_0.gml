image_speed = 0;
targetx = 0;
targety = 0;
// Movement
run_speed = 3;


// Keyboard Controls
run_acceleration = 0.1;
run_speed_max = 3;
run_speed_keys_h = 0;
run_speed_keys_v = 0;
run_friction = 0.04;


//Animation
local_frame = 0;
animation_end = false;

sprite_idle = spr_guy_with_hat_idle_head_first;
sprite_running = spr_guy_with_hat_running_head_first;
sprite_sprinting = spr_guy_with_hat_sprinting_head_first;
sprite_knockback = spr_guy_knockback;
sprite_dead = spr_guy_dead;
sprite_flattened = spr_guy_flat_on_face;
sprite_pushing = spr_guy_with_hat_pushing_head_first;
sprite_look_north = spr_guy_look_north;
sprite_item_get = spr_guy_with_hat_uppy;

run_to_push_timer = 15;
run_to_push_timer_reset = run_to_push_timer;
wall_push = false;

mouse_command = false; // changes how sprite flips

// State - pushing
objects_being_pushed = 0;

expected_move_distance = 0;

invulnerable = 0;
flash = 0;
knockback_distance_remaining = 0;

knockback_distance = 20;
knockback_height = 5;
knockback_speed = 2;

// State - flattened
landing_friction = 0.1;
flattened_delay = 5;
flattened_delay_reset = flattened_delay;

// State for smacking animations..
smack = 0;
smackdir = 0;


state = player_state_idle;
last_state = player_state_idle;

z = 0;
u_flash = noone;
flash_shader = sh_white_flash;

bbox_center_y_offset = -10;

locked = false

fall_speed = 0;
max_fall_speed = 12;
fall_acceleration = 0.1;

// Animation end

change_animation_on_end = false;
next_sprite = sprite_dead;

dead = false;

x_lock = false;
y_lock = false;

collisions = true;
falling = false;
jumping = false;

hop_t = pi;
//hop_speed = 0.1; idk if this is for anything else..
hop_speed = 0.13;
hop_height = 43;

prev_frame = 
{
	x: x,
	y: y,
	bbox_left: bbox_left,
	bbox_right: bbox_right,
	bbox_top: bbox_top,
	bbox_bottom: bbox_bottom,
}

hspd = 0;
vspd = 0;

hearts = array_create(0);

// -- gui hearts over player -- //
for(var _i = 0; _i < 3; _i++)
{
	var _h = spawn(obj_heart, x + 54 -_i*32, y - 108);
	with(_h) 
	{
		offset_x = x - obj_guy.x;
		offset_y = y - obj_guy.y;
	}
	array_push(hearts, _h);
}

// dashing
sprinting = false;
prev_sprinting = false;

sprint_meter_max = 60;
sprint_meter = sprint_meter_max;
sprint_meter_regen = 1;

sprint_cooldown_max = 30;
sprint_cooldown = sprint_cooldown_max;
sprint_factor = 1.5;

// AFK animations
afk = false;
afk_number = 0;

afk_timer = 1200;
afk_timer_reset = 1200;

afk_animation_1s = spr_guy_idle_adjust_hat;
afk_animation_1 = spr_guy_idle_hold_hat;

afk_animation_2s = spr_guy_idle_sitdown;
afk_animation_2 = spr_guy_idle_seated;

// State controls??
// A lot of stuff is getting set from outside of the guy object. I need to try and move it inside

// Effect animation
directional_effect = noone;

expected_direction = 0;

// Bounce animation
bounce = false;
bounce_magnitude_max = 0.1;
bounce_magnitude = 0;
bounce_friction = 0.001;
bounce_t = 0;
bounce_speed = 0.3;

// Shake animation
shaking = false;
shake_mag = 6;
default_shake_magnitude = shake_mag;
shake_xyratio = 0.5;
shake_t = 0;