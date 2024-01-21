function spring(_id, _value, _target, _tension = 0.07, _damping = 0.1){
    if !(variable_instance_exists(id, "spring_manager")) {
        spring_manager = {};    
    }
    if !(variable_struct_exists(spring_manager, _id)) {
        variable_struct_set(spring_manager, _id, 0)
    }    
    
    var _speed = variable_struct_get(spring_manager, _id)
    var _speed_to_add = (_tension * (_target - _value)) - (_damping * _speed);

    _speed += _speed_to_add;
    variable_struct_set(spring_manager, _id, _speed)

    return _value + _speed;
    
}

function spring_speed_set(_id, _value) {
    if !(variable_instance_exists(id, "spring_manager")) {
        spring_manager = {};    
    }
    if !(variable_struct_exists(spring_manager, _id)) {
        variable_struct_set(spring_manager, _id, 0)
    }    
    
    variable_struct_set(spring_manager, _id, _value)
}

function grenade_explode(_radius, _whitelist, _foreach) {
	var _list = ds_list_create();
	var _num = collision_circle_list(x, y, _radius, _whitelist, false, true, _list, false);
	if (_num > 0)
	{
	    for (var i = 0; i < _num; ++i;)
	    {
			var _other = _list[| i];
			_foreach(_other);
	    }
	}
	ds_list_destroy(_list);	
}

function remap(_val, _from1, _to1, _from2, _to2) {
    return (_from2 + ((_to2 - _from2) / (_to1 - _from1)) * (_val - _from1));
}

function player_change_face(_frame, _time){
	if (instance_exists(objPlayer)) {
		with (objPlayer) {
			playerFaceFrame = _frame
			faceTimer = _time;
		}
	}
}

function damage_enemy(_enemy) {
	_enemy.iFrames = 60;
	_enemy.flash = 4;
}