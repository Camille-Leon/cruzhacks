var _camera = view_camera[0];

if (_camera) {
	camera_shake = lerp(camera_shake, 0, 0.1);
	
	camera_angle = camera_shake / 4
	
	var _width = camera_zoom * camera_width;
	var _height = camera_zoom * camera_height;
	
	camera_set_view_size(_camera, _width, _height);
	camera_set_view_pos(_camera, ((x - camera_width / 2) - (_width - camera_width) * 0.5) + irandom_range(-camera_shake, camera_shake), ((y - camera_height / 2) - (_height - camera_height) * 0.5) + irandom_range(-camera_shake, camera_shake));
	camera_set_view_angle(_camera, camera_angle);
}