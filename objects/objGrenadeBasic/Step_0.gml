event_inherited();



imageRotation -= xSpd * 3

var _solids = layer_tilemap_get_id(layer_get_id("Solid"));

if (place_meeting(x, y + 1, objDirtZone)) and !(animating) {
	animating = true;
	dirt = instance_place(x, y + 1, objDirtZone);
}

if (animating) {
	bounceAmount = 0;
	yAnimation += (0.1 + yAnimation * 0.1); // Ease into the gruond
	imageRotation += yAnimation;
	if (yAnimation >= sprite_height + 1) {
		instance_destroy()	
	}
	xSpd = lerp(xSpd, 0, 0.2)
}

ySpd += grv;
collide_bounce(_solids, bounceAmount)

if !(animating) {
	xSpd = lerp(xSpd, 0, 0.03)
	untilExplosion--
}

if (untilExplosion <= 0) and !(animating) {
	instance_create_layer(x + irandom_range(-8, 8), y + irandom_range(-8, 8), "VFX", objEffectExplosion);
	objCamera.camera_shake = 4;
	objCamera.impact = 4;
	
	grenade_explode(32, [objEnemyParent, objPlayer, objPickupParent], function(_other){
		var _parent = object_get_parent(_other.object_index);
		if _parent == objEnemyParent {
			_other.on_damage(dmg);
			objCamera.impact = 6;
			objCamera.camera_shake = 8;
			audio_play_sound(sndThemHurt, 0, false)
		}
		var _pos = 1 - (point_distance(x, y, _other.x, _other.y) / 32);
		var _dir = point_direction(x, y, _other.x, _other.y - _other.sprite_height / 2 );
		_other.xSpd += lengthdir_x(_pos * 12, _dir);
		_other.ySpd += lengthdir_y(_pos * 12, _dir);	
	})
	
	instance_destroy()
}