objCamera.impact = 8;
objCamera.camera_shake = 3;

instance_create_layer(x + irandom_range(-2, 2), y + irandom_range(-2, 2), "VFX", objEffectExplosion);

instance_create_layer(x, y - 4, layer, objEnemyBody, { sprite_index : sprBagBody });

event_inherited();