// this code sucks :)

function Heart(_sprite) constructor {
	sprite = _sprite;
	frame = 0;
	on_damage = function() {
		if (frame == 0) {
			objPlayer.takeDamage();
			frame = 1;
		} else {
			objPlayer.takeDamage(true); // Remove the last heart
		}
	}
	draw = function (_x, _y){
		draw_sprite(sprite, frame, _x, _y);
	};
};


