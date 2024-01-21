var _whichPickup = irandom(2)
var _object;

switch _whichPickup {
	case 0:
		_object = objPickupHeart;
	break;
	case 1:
		_object = objPickupHalfHeart;
	break;
	case 2:
		_object = objPickupCarrot;
	break;
}

var _pickup = instance_create_layer(x - 8, y - sprite_height, "VFX", _object);
_pickup.ySpd = -2;