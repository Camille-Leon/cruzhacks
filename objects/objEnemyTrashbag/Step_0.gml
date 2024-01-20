event_inherited();

var _solids = layer_tilemap_get_id(layer_get_id("Solid"));
var _onGround = place_meeting(x, y + 1, _solids);

xSpd = lerp(xSpd, 0, 0.05)
ySpd += grv;

if !(_onGround) {
	image_index = 1;
} else {
	image_index = 0;	
}

collide_bounce(_solids, 0.3);