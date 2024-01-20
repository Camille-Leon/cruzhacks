// this code sucks :)

global.canTakeDamage = true
global.killDamageTimer = function(){
	global.canTakeDamage = true
			global.playerColor = c_white
}
global.damageTimer = time_source_create(time_source_game, 180, time_source_units_frames, global.killDamageTimer);

function Heart(_sprite) constructor {
	sprite = _sprite;
	frame = 0;
	on_damage = function() {
		if (frame == 0 && global.canTakeDamage){
			global.playerColor = c_red
			frame = 1
			global.canTakeDamage = false
			time_source_reset(global.damageTimer);
			global.damageTimer = time_source_create(time_source_game, 120, time_source_units_frames, global.killDamageTimer);
			time_source_start(global.damageTimer);
		}else if(frame == 1 && global.canTakeDamage){
			global.playerColor = c_red
			array_pop(global.heartArray)
			global.canTakeDamage = false
			time_source_reset(global.damageTimer);
			global.damageTimer = time_source_create(time_source_game, 120, time_source_units_frames, global.killDamageTimer);
			time_source_start(global.damageTimer);
		}
	}
	draw = function (_x, _y){
		draw_sprite(sprite, frame, _x, _y);
		
	};
};


