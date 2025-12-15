function cutscene_summon_letterbox() {
	with(obj_gui_cutscene)
	{
		letterboxing = true;
		lerp_progress = 0;
		set_textbox_alignment(CUTSCENE_TEXTBOX_ALIGNMENT.LOWER_MIDDLE_PORTRAIT); 
	}
}