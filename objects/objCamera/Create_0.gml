camera_width = 320;
camera_height = 240;
camera_angle = 0;
camera_zoom = 1;
camera_shake = 0;

peekAmount = 4;

surf = -1; // GUI

impact = 0;

#macro processImpact if(objCamera.impact>0){exit;}

x = room_width / 2;
y = room_height / 2;

window_scale = 1;

maximum_scale = function() {
	var _w = display_get_width(), _h = display_get_height();
	return _w > _h ? round(_h / camera_height) - 1 : round(_w / camera_width) - 1;
}

window_scale = maximum_scale();

center_window = function() {
	window_set_position((display_get_width() / 2) - (camera_width * window_scale) / 2, (display_get_height() / 2) - (camera_height * window_scale) / 2)	
}

scale_window = function() {
	window_set_size(camera_width * window_scale, camera_height * window_scale);
}	

center_window();