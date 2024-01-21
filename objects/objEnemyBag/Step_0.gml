event_inherited();

var _solids = layer_tilemap_get_id(layer_get_id("Solid"));

if (iFrames) {
	visible = !visible;	
} else {
	visible = true;
}

var _rand = irandom(100);
if (_rand <= 2) {
	instance_create_layer(x + irandom_range(-sprite_width / 2, sprite_width / 2), y, layer, objEnemyBagTrash);	
}

xSpd = lerp(xSpd, sin((current_time + randomVariable * 50) / 1000) * 1, 0.05)
ySpd = lerp(ySpd, (sin((current_time + randomVariable * 50) / 50) * 0.5) + 0.02, 0.1);

collide_bounce(_solids, 0.8)