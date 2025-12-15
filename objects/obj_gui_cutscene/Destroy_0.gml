if(surface_exists(surf)) { 
	surface_set_target(surf);
	draw_clear_alpha(c_white,0);
	surface_reset_target();
	surface_free(surf);
	//view_enabled[1] = false;
	view_camera[1] = view_camera[0];
	global.camera2.active = false;
	}
	
show_debug_message("GUI THING DESTROYED!");