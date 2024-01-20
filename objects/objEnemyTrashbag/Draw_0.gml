if (flash) {
	shader_set(shdFlash);	
}

draw_self();

if (flash) {
	shader_reset();	
}