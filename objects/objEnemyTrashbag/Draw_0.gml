if (flash) {
	shader_set(shdFlash);	
}

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale + xScaleOffset, image_yscale + yScaleOffset, xSpd * 8, c_white, 1);

if (flash) {
	shader_reset();	
}