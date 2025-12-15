randomize(); 

timer --;

if timer >= 0 return;
if spawn_count >= max_spawn instance_destroy();
timer = floor(random_range(timer_min, timer_max + 1));
bug_spawn_count ++;
spawn(obj_bug_alive, x, y);