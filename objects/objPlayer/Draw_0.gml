if (flash) {
	shader_set(shdFlash);	
}

draw_sprite_ext(sprite_index, 0, x, y, 1 + xScaleOffset, 1 + yScaleOffset, xSpd * 2, image_blend, 1);

var _i
for (_i = 0; _i < array_length(heartArray); _i++) {
	var _yOffset = lastHeartAnimation * clamp(remap(_i, array_length(heartArray) - 4, array_length(heartArray) - 1, 0, 1), 0, 1) * (_i % 2 == 0 ? 1 : -1);
	heartArray[_i].draw(8 + _i * (sprite_get_width(heartArray[_i].sprite)), 8 + _yOffset);
}

if (flash) {
	shader_reset();	
}