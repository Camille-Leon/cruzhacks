event_inherited();

image_speed = 0;

txt = "Pepper - DMG Up"
global.dmg = 1;
onPickup = function() {
	global.dmg += 0.05;
}