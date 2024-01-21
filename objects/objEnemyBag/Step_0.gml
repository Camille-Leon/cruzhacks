event_inherited();

var _solids = layer_tilemap_get_id(layer_get_id("Solid"));

if (iFrames) {
	visible = !visible;	
} else {
	visible = true;
}

xSpd = lerp(xSpd, sin((current_time + randomVariable * 50) / 1000) * 1, 0.05)
ySpd = lerp(ySpd, 0, 0.1);

collide_bounce(_solids, 0.8)