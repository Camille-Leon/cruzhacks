scale_window();
surface_resize(application_surface, camera_width, camera_height);

view_enabled = true;

view_set_visible(0, true);

view_set_wport(0, camera_width)
view_set_hport(0, camera_height)

view_camera[0] = camera_create_view(x - camera_width / 2, y - camera_height / 2, camera_width, camera_height);