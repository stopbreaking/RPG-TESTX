if(open)
{
	image_yscale = max(0, (image_yscale - image_yscale/50));
	if (image_yscale < 0.05) {
		if(action_obj != noone) instance_destroy(action_obj);
		instance_destroy();
	}
}

