draw_sprite_ext(sprite_index, 0, x, y, 1 + xScaleOffset, 1 + yScaleOffset, xSpd * 2, global.playerColor, 1);

var _i
for (_i = 0; _i < array_length(global.heartArray); _i++) {
	
	global.heartArray[_i].draw(5 + _i * (sprite_get_width(global.heartArray[_i].sprite)), 5)


}
