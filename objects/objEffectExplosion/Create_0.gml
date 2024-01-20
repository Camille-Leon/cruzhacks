radius = 32;

lifetime = 6;
image_blend = c_white;

direction = irandom(360);
speed = 0.5;

repeat 3 {
	var _dir = irandom(360);
	instance_create_layer(x + lengthdir_x(radius, _dir), y + lengthdir_y(radius, _dir), layer, objEffectLine, {
		direction: _dir	
	});
}