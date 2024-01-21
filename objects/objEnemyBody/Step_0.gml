var _solids = layer_tilemap_get_id(layer_get_id("Solid"));

ySpd += grv;
xSpd = lerp(xSpd, 0, 0.05);

collide(_solids);

if (alarm[0] <= 60) {
	visible = !visible;	
}