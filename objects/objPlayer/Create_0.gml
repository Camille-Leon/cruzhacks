heartArray = [];
lastHeartAnimation = 0;

playerFaceFrame = 0;

repeat 5 {
	array_push(heartArray, new Heart(sprHeart))
}

damageTimer = time_source_create(time_source_game, 30, time_source_units_frames, function() {
	// Whatever happens when you finish taking damage
	image_blend = c_white;
	canTakeDamage = true;
})



takeDamage = function(_removeHeart = false) {
	// Yippee
	image_blend = c_red;
	canTakeDamage = false;
	faceChange(6, 60)
	time_source_start(damageTimer);
	
	if (_removeHeart) {
		array_pop(heartArray);	
	}
}

flash = 0;

canTakeDamage = true; // Invincibility

xSpd = 0;
ySpd = 0;

grv = 0.25; // Gravity
moveSpeed = 2;

xScaleOffset = 0;
yScaleOffset = 0;