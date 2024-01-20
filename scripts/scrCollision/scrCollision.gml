function collide_bounce(_solids, _bounceAmount = 0.5) {
	if (place_meeting(x + xSpd, y, _solids)) {
		if (abs(xSpd) > 1) {
			xSpd *= -_bounceAmount;	
		} else {
			xSpd = 0;	
		}
	}		
		
	x += xSpd;
	
	if (place_meeting(x, y + ySpd, _solids)) {
		if (abs(ySpd) > 1) {
			ySpd *= -_bounceAmount;	
		} else {
			ySpd = 0;	
		}
	}
	
	y += ySpd;
}

function collide(_solids) {
	if (place_meeting(x + xSpd, y, _solids)) {
	    while !(place_meeting(x + sign(xSpd), y, _solids)) {
	        x += sign(xSpd);    
	    }
	    xSpd = 0;
	}
	
	x += xSpd;
	
	if (place_meeting(x, y + ySpd, _solids)) {
	    while !(place_meeting(x, y + sign(ySpd), _solids)) {
	        y += sign(ySpd);    
	    }
	    ySpd = 0;
	}
	
	y += ySpd;	
}