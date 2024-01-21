if (animating) {
	audio_play_sound(sndYippee, 0, false)
	var _y = y;
	while (place_meeting(x, _y, objHurtzone)) {
		_y--;
	}	
	instance_create_layer(x, _y + sprite_height / 2, "Instances", objPlant)
} else {
	audio_play_sound(sndBoom, 0, false)
}