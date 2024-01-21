event_inherited();

image_speed = 0;

txt = "1 Hp Up"

onPickup = function() {
	if (array_last(other.heartArray).frame == 1) {
		array_last(other.heartArray).frame = 0;
	
		array_push(other.heartArray, new Heart(sprHeart, 1));
	} else {
		array_push(other.heartArray, new Heart(sprHeart));	
	}	
}