processImpact;

image_xscale = lerp(image_xscale, 0.25, 0.3);
image_yscale = lerp(image_yscale, 0.25, 0.3);

if (image_xscale <= 0.26) {
	instance_destroy()	
}