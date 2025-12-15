// Inherit the parent event
event_inherited();
if(triggered){
with(obj_guy)
{
	if(instance_exists(obj_buried_crystal))
	{
		//x = obj_buried_crystal.x;
		//y = obj_buried_crystal.y - 7;
		instance_destroy(obj_buried_crystal);
	}
}
}


camera_snap_to_object(self);