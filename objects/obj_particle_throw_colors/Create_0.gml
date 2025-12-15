randomize();

direction = random_range(60, 120);
speed = random_range(min_speed, max_speed);




var n = round(random(3));

if(n < 1) image_blend = c_green;
else if (n < 2) image_blend = c_red;
else if (n < 3) image_blend = c_blue;
else image_blend = c_white;

var m = round(random(4));

if(m < 3) sprite_index = spr_pixel_star_1;
else if (m < 4) sprite_index = spr_spiral;
else sprite_index = spr_x;

spin = spin_speed * random_range(-1, 1);