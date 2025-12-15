t += t_speed;
if(t > 2*pi) t -= 2*pi;

y = layer_get_y("Parallax_i1") + y_start + magnitude*sin(t);
x = layer_get_x("Parallax_i1") + x_start;