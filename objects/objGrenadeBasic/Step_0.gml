event_inherited();

var _solids = layer_tilemap_get_id(layer_get_id("Solid"));

xSpd = lerp(xSpd, 0, 0.03)
ySpd += grv;

collide_bounce(_solids, bounceAmount)

untilExplosion--

if (untilExplosion <= 0) {
	instance_create_layer(x + irandom_range(-8, 8), y + irandom_range(-8, 8), "VFX", objEffectExplosion);
	objCamera.camera_shake = 4;
	objCamera.impact = 4;
	
	var _list = ds_list_create();
	var _num = collision_circle_list(x, y, 32, [objEnemyParent, objPlayer, objPickupParent], false, true, _list, false);
	if (_num > 0)
	{
	    for (var i = 0; i < _num; ++i;)
	    {
			var _other = _list[| i];
			var _parent = object_get_parent(_other.object_index);
			if _parent == objEnemyParent {
				_other.on_damage(dmg);
				objCamera.impact = 4;
				objCamera.camera_shake = 8;
			}
			var _pos = 1 - (point_distance(x, y, _other.x, _other.y) / 32);
			var _dir = point_direction(x, y, _other.x, _other.y - _other.sprite_height / 2 );
			_other.xSpd = lengthdir_x(_pos * 12, _dir);
			_other.ySpd = lengthdir_y(_pos * 12, _dir);
	    }
	}
	ds_list_destroy(_list);
	instance_destroy()
}