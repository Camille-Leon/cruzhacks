processImpact
flash = clamp(flash - 1, 0, 120);

var _solids = layer_tilemap_get_id(layer_get_id("Solid"));
var _obstacles = layer_tilemap_get_id(layer_get_id("Obstacle"));

var _hori = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _onGround = place_meeting(x, y + 1, _solids);

if (_onGround) {
	if (_hori != 0) {
		sprite_index = sprPlayerWalk;	
	} else {
		sprite_index = sprPlayerIdle;	
	}
} else {
	sprite_index = sprPlayerWalk;
	image_index = 1;
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

if (place_meeting(x + xSpd, y, _solids)) {
    while !(place_meeting(x + sign(xSpd), y, _solids)) {
        x += sign(xSpd);    
    }
    xSpd = 0;
}

x += xSpd;

if (place_meeting(x, y + ySpd, _solids)) {
    while !(place_meeting(x, y + sign(ySpd), _solids)) {
        y += sign(ySpd);    
    }
	if (ySpd > 1) {
		yScaleOffset -= 0.2;
		xScaleOffset += 0.2;
	}
    ySpd = 0;
}

y += ySpd;

if (mouse_check_button_pressed(mb_right)) {
	instance_create_layer(mouse_x, mouse_y, layer, choose(objPickupHeart, objPickupHalfHeart));	
}

if (place_meeting(x, y, _obstacles)) and (canTakeDamage) {
	heartArray[array_length(heartArray) - 1].on_damage();
	ySpd = -5;
	xSpd += choose(-2, 2);
	
	objCamera.camera_shake = 2;
	objCamera.impact = 4;
	flash = 8;
	spring_speed_set("lastHeartAnimation", choose(-2, 2));
	
	if (array_length(heartArray) <= 0) {
		room_goto(roomGameOver);
	}
}

	