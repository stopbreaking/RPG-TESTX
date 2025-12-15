if(buttons_attached != 0 && buttons_pressed == buttons_attached) 
{
	event_fire(event_id);
	
	instance_destroy();
}