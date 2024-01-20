x = lerp(x, (objPlayer.x) + lengthdir_x(24, pointingDirection), 0.6);
y = lerp(y, (objPlayer.y - objPlayer.sprite_height / 2) + lengthdir_y(24, pointingDirection), 0.6);

pointingDirection -= angle_difference(pointingDirection, point_direction(objPlayer.x, objPlayer.y - objPlayer.sprite_height / 2, mouse_x, mouse_y)) / 2;

if (mouse_check_button_pressed(mb_left)) {
	var _grenade = instance_create_layer(x, y, layer, objGrenadeBasic);
	_grenade.xSpd = lengthdir_x(5, point_direction(x, y, mouse_x, mouse_y));
	_grenade.ySpd = lengthdir_y(5, point_direction(x, y, mouse_x, mouse_y));	
}
