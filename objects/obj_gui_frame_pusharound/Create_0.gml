lerp_progress = 0;
pixel_size = 86;

snap = true;
snapx = x;
snapy = y;
snap_ease = 100;
push_force_eased = 25;


function init(){
	animate_value_doublelerp(set_xscale, self, 0, width/pixel_size, horizontal_open_ease);
	animate_value_doublelerp(set_yscale, self, 0, height/pixel_size, vertical_open_ease);
}