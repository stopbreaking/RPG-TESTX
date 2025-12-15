/// @description Destruction Timer..
vspeed += p_gravity;

image_angle += spin;

timer --;
if timer <= 0 instance_destroy();