
event_inherited();

jumpTimer = time_source_create(time_source_game, 60, time_source_units_frames, function() {
	xSpd += -sign(x - objPlayer.x) * 4;
	ySpd = -4
	time_source_start(jumpTimer);
})
time_source_start(jumpTimer);

image_speed = 0;