if(!movement_lock && !movement_unlocking) {
	x = mouse_x;
	y = mouse_y;
} else if (movement_unlocking) 
{
	// slowly move the hand to the the mouse point
	x += (mouse_x - x)/easing;
	y += (mouse_y - y)/easing;
	
	if(point_distance(x, y, mouse_x, mouse_y) < 20) movement_unlocking = false;
}

if (global.game_paused) {
	sprite_index = spr_hand_pointer;
	return;
	}


// Obtain clickable from the top of ordered list. Using Instance_place causes flickering.
clickable = noone;
var _list = ds_list_create();
var _n = instance_place_list(x, y, obj_clickable, _list, true);
for(var _i = 0; _i < _n; _i++)
{
	if(!_list[| _i].clickable_disabled) {
		clickable = _list[| _i];
		break;
	}
}

ds_list_destroy(_list);
script_execute(state);


// Hide when afk
if(point_distance(prev_frame.x_rel, prev_frame.y_rel, x - obj_camera.x, y - obj_camera.y) <= 0)
{
	afk_timer --;
} else 
{
	afk_timer = afk_timer_reset;
}

if( afk_timer <= 0) 
{
	image_alpha = max(0.2, image_alpha - 0.05);
} else {
	image_alpha = 1;
}