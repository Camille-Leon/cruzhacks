draw_sprite(sprite_index, 1, x, y);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext_transformed_color(x, y - 10 + textOffset, txt, 10, 200, 0.5, 0.5, 0, c_black, c_black, c_black, c_black, 255);
	
