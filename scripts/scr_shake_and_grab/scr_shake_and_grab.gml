function shake_and_grab(_instance){
	with(_instance){
		if(locked) return;
		if(stuck)
		{
			shake();
			pump();
		} 
		else
		{
			if(!grabbed) 
			{
				grab_offsetx = x - mouse_x;
				grab_offsety = y - mouse_y;
				grabbed = true;
				snap = false;
			}
		}
	}
}