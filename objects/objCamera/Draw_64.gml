if !(surface_exists(surf)) {
	surf = surface_create(camera_width, camera_height);	
}

surface_set_target(surf);
draw_clear_alpha(c_black, 0)

if (instance_exists(objPlayer)) {
	var _heartArray = objPlayer.heartArray;
	var _lastHeartAnimation = objPlayer.lastHeartAnimation;
	
	if (objPlayer.flash) {
		shader_set(shdFlash);	
	}
	
	var _i
	for (_i = 0; _i < array_length(_heartArray); _i++) {
		var _yOffset = _lastHeartAnimation * clamp(remap(_i, array_length(_heartArray) - 4, array_length(_heartArray) - 1, 0, 1), 0, 1) * (_i % 2 == 0 ? 1 : -1);
		_heartArray[_i].draw(8 + _i * (sprite_get_width(_heartArray[_i].sprite) + 1), 8 + _yOffset);
	}
	
	if (objPlayer.flash) {
		shader_reset();
	}

	var _sign = instance_place(objPlayer.x - 8, objPlayer.y - 8, objSign);
	if (_sign != noone) {
		draw_set_color(c_black)
		draw_rectangle((camera_width / 2) - (string_width(_sign.txt) / 2) - 4, camera_height - string_height(_sign.txt) - 8 - (string_height(_sign.txt) / 2) - 4, (camera_width / 2) + (string_width(_sign.txt) / 2) + 4, camera_height - 4, false);
		draw_set_color(c_white)
		draw_text(camera_width / 2, camera_height - string_height(_sign.txt) - 8, _sign.txt);
	}		
}

draw_set_color(c_black)
if (transition == 0) {
	var _x = curve(-(camera_width + 4), 0, transitionAmount, animTransition, 0); 
} else {
	var _x = curve(0, camera_width + 4, transitionAmount, animTransition, 0); 
}	
draw_rectangle(_x, 0, _x + camera_width + 1, camera_height + 1, false);
draw_set_color(c_white)

surface_reset_target()

draw_surface(surf, 0, 0);