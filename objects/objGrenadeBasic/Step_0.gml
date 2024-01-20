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
	
	var _list = ds_list_create();
	var _num = collision_circle_list(x, y, 32, objEnemyParent, false, true, _list, false);
	if (_num > 0)
	{
	    for (var i = 0; i < _num; ++i;)
	    {
			var _other = _list[| i];
	        _other.hp -= dmg;		
	    }
	}
	ds_list_destroy(_list);
	
	instance_destroy()
}