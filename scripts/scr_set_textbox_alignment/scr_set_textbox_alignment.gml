function set_textbox_alignment(_alignment){
	// change the expected position of the textbox.. animate???
	if(!instance_exists(obj_gui_cutscene)) { show_debug_message("Error: no cutscene object!"); return;}
	with(obj_gui_cutscene){
	switch(_alignment)
		{
			case CUTSCENE_TEXTBOX_ALIGNMENT.TOP:
				tx1 = 0;
				tx2 = RESOLUTION_W;
				ty1 = 0;
				ty2 = RESOLUTION_H * 0.2
				break;
			case CUTSCENE_TEXTBOX_ALIGNMENT.BOTTOM:
				tx1 = 0;
				tx2 = RESOLUTION_W;
				ty1 = RESOLUTION_H - RESOLUTION_H * 0.2;
				ty2 = RESOLUTION_H;
			break;
			case CUTSCENE_TEXTBOX_ALIGNMENT.LOWER_MIDDLE:
				tx1 = RESOLUTION_W * 0.15;
				tx2 = RESOLUTION_W - RESOLUTION_W * 0.15;
				ty1 = RESOLUTION_H - RESOLUTION_H * 0.2;
				ty2 = RESOLUTION_H - RESOLUTION_H * .05;
			break;
			case CUTSCENE_TEXTBOX_ALIGNMENT.LOWER_MIDDLE_PORTRAIT:
				tx1 = RESOLUTION_W * 0.15;
				tx2 = RESOLUTION_W - RESOLUTION_W * 0.15;
				ty1 = RESOLUTION_H - RESOLUTION_H * 0.2;
				ty2 = RESOLUTION_H - 14;
			break;
			case CUTSCENE_TEXTBOX_ALIGNMENT.LOWER_MIDDLE_PORTRAIT_STRETCHED:
				tx1 = 24;
				tx2 = RESOLUTION_W - 24;
				ty1 = RESOLUTION_H - RESOLUTION_H * 0.2;
				ty2 = RESOLUTION_H - 14;
			break;
			
			default:
			show_debug_message("Error: Unrecognized textbox alignment");
		}
	}
}

enum CUTSCENE_TEXTBOX_ALIGNMENT 
{
	TOP,
	BOTTOM,
	LOWER_MIDDLE,
	LOWER_MIDDLE_PORTRAIT,
	LOWER_MIDDLE_PORTRAIT_STRETCHED,
}