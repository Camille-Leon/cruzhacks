if (keyboard_check_pressed(vk_space)) {
	room_goto(room1);
}


titleOffset = sin(current_time / 800) * 40;

playScale = sin(current_time / 2000) + 1