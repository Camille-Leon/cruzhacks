processImpact
flash = clamp(flash - 1, 0, 120);
iFrames = clamp(iFrames - 1, 0, 120);

if (hp <= 0){
	instance_destroy()
}