if (keyboard_check_pressed(vk_space)) {
	if (objCamera.transition = 1) {
		objCamera.transition = 0;
		objCamera.transitionAmount = 0;
	}	
}

if (objCamera.transitionAmount >= 1) and (objCamera.transition = 0) {
	room_goto(room1);	
}


titleOffset = sin(current_time / 800) * 40;

playScale = sin(current_time / 2000) + 1