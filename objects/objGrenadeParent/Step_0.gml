processImpact

if (untilExplosion <= 0){
	
	var _list = ds_list_create();
	var _num = collision_circle_list(x, y, 32, objEnemyParent, false, true, _list, false);
	if (_num > 0)
	{
	    for (var i = 0; i < _num; ++i;)
	    {
	        _list[| i].hp -= global.dmg
	    }
	}
	ds_list_destroy(_list);
}