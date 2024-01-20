xSpd = 0;
ySpd = 0;

grv = 0.25;

bounceAmount = 0.5;

collide = function(_solids) {
	if (place_meeting(x + xSpd, y, _solids)) {
		if (abs(xSpd) > 1) {
			xSpd *= -bounceAmount;	
		} else {
			xSpd = 0;	
		}
	}		
		
	x += xSpd;
	
	if (place_meeting(x, y + ySpd, _solids)) {
		if (abs(ySpd) > 1) {
			ySpd *= -bounceAmount;	
		} else {
			ySpd = 0;	
		}
	}
	
	y += ySpd;
}