shader = sh_paletteswap;
sprite_org = sprite_index;
palette_org = spr_newp;
palette_alt = spr_palette_alt_311x_3;
palette_length = 16.0;


sub_im = 0.0;
spd = 0.05;

u_palette_length = shader_get_uniform(sh_paletteswap, "palette_length");
u_palette_index = shader_get_uniform(sh_paletteswap, "palette_index");

hspeed = 0;
vspeed = 0;
