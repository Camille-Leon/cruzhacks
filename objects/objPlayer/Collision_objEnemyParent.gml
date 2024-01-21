if (iFrames <= 0) {
	array_last(heartArray).on_damage();
	
	var _otherDirection = point_direction(x, y, other.x, other.y);
	
	ySpd = -5;
	xSpd = lengthdir_x(-5, _otherDirection);
	
	other.ySpd = lengthdir_y(5, _otherDirection);
	other.xSpd = lengthdir_x(5, _otherDirection);
	
	objCamera.camera_shake = 2;
	objCamera.impact = 4;
	show_debug_message("FUCK")
	
	flash = 8;
	
	spring_speed_set("lastHeartAnimation", choose(-2, 2));
	
	if (array_length(heartArray) <= 0) {
		room_goto(roomGameOver);
	}
}