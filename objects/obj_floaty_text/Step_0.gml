world_x = obj_guy.x;
world_y = obj_guy.y - 130 - lift;

lift += vspd;

if !start {
	start_timer --;
	if(start_timer <= 0)
	{
		animation = animate_value_doublelerp(set_alpha, self, 1, 0, 100);
		start = true;
	}
}

if(image_alpha <= 0){
if(instance_exists(animation)) instance_destroy(animation);
instance_destroy();
}

