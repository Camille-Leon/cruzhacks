event_inherited();

image_index = 1;

onPickup = function() {
	if (array_last(other.heartArray).frame == 1) {
		array_last(other.heartArray).frame = 0;
	} else {
		array_push(other.heartArray, new Heart(sprHeart, 1));	
	}
}