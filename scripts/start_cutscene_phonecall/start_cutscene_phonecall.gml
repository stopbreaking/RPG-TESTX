function start_cutscene_phonecall(){
	with(obj_camera)
	{
		global.main_camera_obj = self;
	}
	with(obj_camera_phone)
	{
		active = true;
	}
	
	set_camera_offset(CAMERA_OFFSET.RIGHT);
	set_camera_offset(CAMERA_OFFSET.PHONE_CORRECT);
	with(instance_create_layer(x,y, "Instances", obj_gui_cutscene))
	{
		letterboxing = true;
		second_camera_on = true;
		text_on = true;
	}
	with(obj_guy){
		sprite_index = spr_guy_with_phone;
		hspd = 0;
		vspd = 0;
		locked = true;
		if(state != player_state_locked) 
		{
			last_state = state;
			state = player_state_locked;
		}
	}
}