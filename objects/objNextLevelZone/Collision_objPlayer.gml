if (objCamera.transition = 1) {
	objCamera.transition = 0;
	objCamera.transitionAmount = 0;
}	

if (objCamera.transitionAmount >= 1){
	room_goto_next();
}