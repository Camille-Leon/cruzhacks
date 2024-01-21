if (equipped) {
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1 * -sign(objPlayer.x - mouse_x), pointingDirection, c_white, 1);
	draw_sprite_ext(sprite_index, 1, x, y, 1, 1 * -sign(objPlayer.x - mouse_x), pointingDirection, c_white, 1);
} else {
	draw_sprite(sprPickupIndicator, 0, x, y - sprite_height);
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1, pointingDirection, c_white, 1);	
}