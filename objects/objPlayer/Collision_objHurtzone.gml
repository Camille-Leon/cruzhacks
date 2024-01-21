if (iFrames <= 0) {
	array_last(heartArray).on_damage();
	
	ySpd = sign(other.y - y) * 4;
	xSpd *= 0.5;
	
	objCamera.camera_shake = 2;
	objCamera.impact = 4;
	
	flash = 8;
	
	spring_speed_set("lastHeartAnimation", choose(-2, 2));
	
	if (array_length(heartArray) <= 0) {
		room_goto(roomGameOver);
	}
}