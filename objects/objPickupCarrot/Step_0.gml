event_inherited();

var _solids = layer_tilemap_get_id(layer_get_id("Solid"));

xSpd = lerp(xSpd, 0, 0.03)
ySpd += grv;

collide(_solids);