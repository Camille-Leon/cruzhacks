var _solids = layer_tilemap_get_id(layer_get_id("Solid"));
var _onGround = place_meeting(x, y + 1, _solids);

if (_onGround) and (instance_exists(objPlayer)) {
	xSpd += -sign(x - objPlayer.x) * 4;
	ySpd += -4;
	xScaleOffset = 0.5;
	yScaleOffset = -0.5
}

alarm[0] = 60;