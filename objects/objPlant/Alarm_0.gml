
random_set_seed(current_time)
_whichPickup = irandom(2)

if (_whichPickup == 0){
	var _pickup = instance_create_layer(x - 8, y - sprite_height, "VFX", objPickupHeart);
}else if (_whichPickup == 1){
	var _pickup = instance_create_layer(x - 8, y - sprite_height, "VFX", objPickupHalfHeart);
}else if (_whichPickup == 2){
	var _pickup = instance_create_layer(x - 8, y - sprite_height, "VFX", objPickupCarrot);
}
_pickup.ySpd = -2;