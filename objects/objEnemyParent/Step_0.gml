processImpact
flash = clamp(flash - 1, 0, 120);

var _solids = layer_tilemap_get_id(layer_get_id("Solid"));
var _obstacles = layer_tilemap_get_id(layer_get_id("Obstacle"));


var _onGround = place_meeting(x, y + 1, _solids);
ySpd += grv;


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