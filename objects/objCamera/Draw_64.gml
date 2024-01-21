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

}

draw_text_transformed(0, 0, string(fps) + " FPS", 0.5, 0.5, 0);

surface_reset_target()

draw_surface(surf, 0, 0);