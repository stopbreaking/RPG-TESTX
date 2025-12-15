var _x = x;
var _y = y;

with(obj_hand) if(state == hand_state_grabbing) return;

// Specifically on the frame where the player lets go.
if(place_meeting(x, y, obj_bodypart_head) && (obj_bodypart_head.frame_released))
{	
	head = true;
	with(obj_bodypart_head) 
	{
		snap = true;
		snapx = _x + 3;
		snapy = _y - 82;
		locked = true;
	}
}
if(place_meeting(x, y, obj_bodypart_chest) && (obj_bodypart_chest.frame_released))
{	
	chest = true;
	with(obj_bodypart_chest) 
	{
		snap = true;
		snapx = _x + 1;
		snapy = _y - 52;
		locked = true;
	}
}
if(place_meeting(x, y, obj_bodypart_hands) && (obj_bodypart_hands.frame_released))
{	
	arms = true;
    with(obj_bodypart_hands) 
	{
		snap = true;
		snapx = _x;
		snapy = _y - 59;
		locked = true;
	}
}
if(place_meeting(x, y, obj_bodypart_legs) && (obj_bodypart_legs.frame_released))
{	
	legs = true;
	with(obj_bodypart_legs) 
	{
		snap = true;
		snapx = _x - 2;
		snapy = _y - 24;
		locked = true;
	}
}

// When fulfilled execute next step of prompt.
if(!(head && arms && legs && chest)) return;

// Fade to white.

if(flash == noone) {
	flash = spawn(obj_flash_color, 0, 0);
	with(flash) 
	{
		duration = 90;
		color = c_blue;
	}	
}

if(flash.state == 0) return; // After the flash has obscured the entire screen ->

if(instance_exists(obj_text_prompt)) 
	with(obj_text_prompt) 
	{
		fulfilled = true;
	}

// destroy all the boring objects
instance_destroyall(
[
	obj_bodypart_head,
	obj_bodypart_hands,
	obj_bodypart_chest,
	obj_bodypart_legs,
	obj_guy_deadprint
]);

move_object(obj_guy, x, y + 96);