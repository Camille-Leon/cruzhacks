var _solids = layer_tilemap_get_id(layer_get_id("Solid"));

var _hori = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _onGround = place_meeting(x, y + 1, _solids);

var _friction = _onGround ? 0.3 : 0.1
xSpd = lerp(xSpd, _hori * moveSpeed, _friction);
ySpd += grv;

if (_onGround) and (keyboard_check_pressed(ord("W"))) {
	ySpd = -4.5; // Jumping	
}

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