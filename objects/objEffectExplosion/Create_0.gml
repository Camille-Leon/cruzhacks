radius = 32;

lifetime = 6;
outline = false;
image_blend = c_white;

direction = irandom(360);
speed = 0.5;
speedTemp = speed;

repeat 3 {
	var _dir = irandom(360);
	instance_create_layer(x + lengthdir_x(radius - 16, _dir), y + lengthdir_y(radius - 16, _dir), layer, objEffectLine, {
		direction: _dir	
	});
}