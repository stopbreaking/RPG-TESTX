enum CAMERA_OFFSET
{
	UP = 0,
	DOWN = 1,
	CENTER = 2,
	LEFT = 3,
	RIGHT = 4,
	MIDDLE = 5,
	PHONE_CORRECT = 6,
	SUPER_DOWN = 7,
	ITEM_GET = 8,
}

function set_camera_offset(_offset) 
{
	switch(_offset)
	{
		case(CAMERA_OFFSET.UP):
			global.main_camera_obj.offset_y = - RESOLUTION_H * .3;
			break;
		case(CAMERA_OFFSET.ITEM_GET):
			global.main_camera_obj.offset_y = - RESOLUTION_H * .07;
			break;
		case(CAMERA_OFFSET.DOWN):
			global.main_camera_obj.offset_y = RESOLUTION_H * .2;
			break;
		case(CAMERA_OFFSET.CENTER):
			global.main_camera_obj.offset_y = 0;
			break;
		case(CAMERA_OFFSET.LEFT):
			global.main_camera_obj.offset_x = -RESOLUTION_W * .25;
			break;
		case(CAMERA_OFFSET.RIGHT):
			global.main_camera_obj.offset_x = RESOLUTION_W * .25;
			break; 
		case(CAMERA_OFFSET.MIDDLE):
			global.main_camera_obj.offset_x = 0;
			break;
		case(CAMERA_OFFSET.PHONE_CORRECT):
			global.main_camera_obj.offset_y = - RESOLUTION_H * 0.05;
			break;
		case(CAMERA_OFFSET.SUPER_DOWN):
			global.main_camera_obj.offset_y = RESOLUTION_H * 0.8;
			break;
		default:
		show_debug_message("??? wtf??");
		break;
	}
}