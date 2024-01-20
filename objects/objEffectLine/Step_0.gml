processImpact

lifetime--

speed = lerp(speed, 0, 0.3);
image_xscale = lerp(image_xscale, 0, 0.3);

if (lifetime < 4) {
	image_blend = c_black;	
}

if (lifetime <= 0) {
	instance_destroy()	
}