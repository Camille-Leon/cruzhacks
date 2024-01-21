heartArray = [];
lastHeartAnimation = 0;

playerFaceFrame = 0;
faceTimer = 0;

repeat 5 {
	array_push(heartArray, new Heart(sprHeart))
}

takeDamage = function(_removeHeart = false) {
	// Yippee
	player_change_face(6, 60);
	audio_play_sound(sndYouHurt, 0, false)
	iFrames = 60;
	
	if (instance_exists(objGrenadeLauncher)) {
		objGrenadeLauncher.toss(point_direction(x, y - sprite_height / 2, mouse_x, mouse_y));
	}	
	
	if (_removeHeart) {
		array_pop(heartArray);	
	}
}

flash = 0;
iFrames = 0;

xSpd = 0;
ySpd = 0;

grv = 0.25; // Gravity
moveSpeed = 2;

xScaleOffset = 0;
yScaleOffset = 0;