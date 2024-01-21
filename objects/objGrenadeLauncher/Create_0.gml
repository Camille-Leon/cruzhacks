pointingDirection = choose(-45, 45);

image_speed = 0;

global.gPower = 0; // Power addition

equipped = false;

xSpd = 0;
ySpd = 0;

fireRate = 17;
maxFireRate = fireRate;

toss = function (_direction) {
	xSpd = lengthdir_x(8, _direction);
	ySpd = lengthdir_y(8, _direction);
	pointingDirection = irandom(360);
	equipped = false;
}