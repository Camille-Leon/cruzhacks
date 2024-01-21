event_inherited();

var _solids = layer_tilemap_get_id(layer_get_id("Solid"));

iFrames = 99;

if (place_meeting(x, y + ySpd, _solids)) and !(going) {
	going = true;	
	alarm[0] = 30;
}

if (going) {
	visible = !visible;
}

ySpd += 0.25;

collide_bounce(_solids, 0.3);