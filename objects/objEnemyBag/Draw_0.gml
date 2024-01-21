if (flash) { shader_set(shdFlash); }

draw_sprite_ext(sprite_index, image_index, x, y + sin((current_time + randomVariable * 50) / 750) * 8, image_xscale, image_yscale, xSpd * 8, c_white, 1);

if (flash) { shader_reset(); }