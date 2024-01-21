processImpact

if (equipped) {
	x = lerp(x, (objPlayer.x) + lengthdir_x(24, pointingDirection), 0.6);
	y = lerp(y, (objPlayer.y - objPlayer.sprite_height / 2) + lengthdir_y(24, pointingDirection), 0.6);
	
	pointingDirection -= angle_difference(pointingDirection, point_direction(objPlayer.x, objPlayer.y - objPlayer.sprite_height / 2, mouse_x, mouse_y)) / 2;
	
	if (mouse_check_button_pressed(mb_left)) {
		audio_play_sound(sndShoot, 0, false)
		var _x = x + lengthdir_x(11, pointingDirection) + lengthdir_x(2, pointingDirection + 90);
		var _y = y + lengthdir_y(11, pointingDirection) + lengthdir_y(2, pointingDirection + 90);
		var _grenade = instance_create_layer(_x, _y, layer, objGrenadeBasic);
		_grenade.xSpd = lengthdir_x(7 + global.gPower, point_direction(x, y, mouse_x, mouse_y));
		_grenade.ySpd = lengthdir_y(7 + global.gPower, point_direction(x, y, mouse_x, mouse_y));	
	}
} else {
	var _solids = layer_tilemap_get_id(layer_get_id("Solid"));
	
	ySpd += 0.25;
	pointingDirection += xSpd * 4;
	xSpd = lerp(xSpd, 0, 0.1);
	
	collide_bounce(_solids, 0.5)
}