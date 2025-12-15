active = false;
parent_obj = noone;

timer_max = 20;
timer = 0;

player_highlight = false;

image_alpha = 0;

depth = -y;

function activate()
{
	active = true;
	image_alpha = 1;
}

// If the player clicks away from the npc, the game needs to stop checking for collisions
function deactivate ()
{
	image_alpha = 0;
	active = false;
}

event_register_script("terrain_click", self, deactivate);
event_register_script("move_key_down", self, deactivate);

// IT DOESN'T WORK IN THIS ROOM FROM SOME REASON IT WORKED IN THE FIRST ROOM BUT NOT  IN TH E SECOND SO I MADE A COPY AND IM MAKING IT DO THIS
var _parent = noone;
var _id = parent_id;
var _o = self;
with(obj_clickable_trigger_cutscene) {
	if (link_id == _id) {
		_parent = self;
		interact_point = _o; 	
	}
}
parent_obj = _parent;

disabled = false;