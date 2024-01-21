processImpact
show_debug_message("TET")

flash = clamp(flash - 1, 0, 120);
iFrames = clamp(iFrames - 1, 0, 120);
faceTimer = clamp(faceTimer - 1, 0, 120);

if (faceTimer <= 0) {
	playerFaceFrame = 0;	
}

var _solids = layer_tilemap_get_id(layer_get_id("Solid"));

var _hori = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _onGround = place_meeting(x, y + 1, _solids);

if (_onGround) {
	if (sprite_index == sprPlayerJump) {
		yScaleOffset -= 0.2;
		xScaleOffset += 0.2;	
	}
	if (_hori != 0) {
		sprite_index = sprPlayerWalk;	
	} else {
		sprite_index = sprPlayerIdle;	
	}
} else {
	sprite_index = sprPlayerJump;
}

var _friction = _onGround ? 0.3 : 0.1
xSpd = lerp(xSpd, _hori * moveSpeed, _friction);
ySpd += grv;

xScaleOffset = spring("xScaleOffset", xScaleOffset, 0);
yScaleOffset = spring("yScaleOffset", yScaleOffset, 0);
lastHeartAnimation = spring("lastHeartAnimation", lastHeartAnimation, 0);

if (_onGround) and (keyboard_check_pressed(ord("W"))) {
	ySpd = -4.5; // Jumping	
	xScaleOffset += 0.3;
	yScaleOffset -= 0.3;
}

if (iFrames) {
	visible = !visible;	
} else {
	visible = true;
}

collide(_solids);

if (keyboard_check_pressed(ord("H"))) {
	instance_create_layer(mouse_x, mouse_y, layer, choose(objPickupHeart, objPickupHalfHeart));	
}
	