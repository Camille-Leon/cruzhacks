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