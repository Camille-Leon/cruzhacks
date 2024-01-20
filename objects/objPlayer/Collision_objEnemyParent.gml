if (iFrames <= 0) {
	heartArray[array_length(heartArray) - 1].on_damage();
	ySpd += sign(y - objEnemyParent.y) * 4;
	xSpd += sign(x - objEnemyParent.x) * 4;
	
	objCamera.camera_shake = 2;
	objCamera.impact = 4;
	flash = 8;
	spring_speed_set("lastHeartAnimation", choose(-2, 2));
	
	if (array_length(heartArray) <= 0) {
		room_goto(roomGameOver);
	}
}