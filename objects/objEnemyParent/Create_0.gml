xSpd = 0;
ySpd = 0;
grv = 0.25; // Gravity

iFrames = 0;

hp = 99;
flash = 0;

on_damage = function(_damage) {
	if (iFrames <= 0) {
		iFrames = 30;
		flash = 4;
		hp -= _damage;
	}
};