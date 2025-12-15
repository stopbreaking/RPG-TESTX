if(global.game_paused) return;
if(place_meeting(x, y, obj_guy))
{
	hurt_player(point_direction(xprevious, yprevious, x, y), attack_force, 1);
}
// check_collisions_objects();
// If pathed into a wall, return to previous point.