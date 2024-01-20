event_inherited();

var _solids = layer_tilemap_get_id(layer_get_id("Solid"));

xSpd = lerp(xSpd, 0, 0.03)
ySpd += grv;

collide_bounce(_solids, bounceAmount)

untilExplosion--

if (untilExplosion <= 0) {
	instance_create_layer(x + irandom_range(-8, 8), y + irandom_range(-8, 8), layer, objEffectExplosion);
	objCamera.camera_shake = 4;
	objCamera.impact = 4;
	
	instance_destroy()
}