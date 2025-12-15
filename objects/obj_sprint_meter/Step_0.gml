x = obj_guy.x;
y = obj_guy.y + 20;
depth = obj_guy.depth - 1;

if(!instance_exists(obj_guy)) return;
stamina = max_stamina*(obj_guy.sprint_meter/obj_guy.sprint_meter_max);