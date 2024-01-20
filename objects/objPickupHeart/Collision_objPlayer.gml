onPickup();

with (objPlayer) {
	spring_speed_set("lastHeartAnimation", choose(-1, 1));	
}

objCamera.camera_shake = 1;
objCamera.impact = 2;
other.flash = 2;

instance_destroy(self)