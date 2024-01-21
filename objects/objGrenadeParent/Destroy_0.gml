if (animating) {
	audio_play_sound(sndYippee, 0, false)
	instance_create_layer(x, dirt.y, "Instances", objPlant)
} else {
	audio_play_sound(sndBoom, 0, false)
}