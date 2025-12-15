/// @description Check several 'quests' at once.
/// @param {Array} _conditions
/// @param _inst

function any_condition_first(_conditions, _inst){
	var _value = false;
	if(array_length(_conditions) == 0) return false;
	for(var _i = 0; _i < array_length(_conditions); _i++;) {
		if(npc_check_quest(_inst, _conditions[_i], true)) _value = true;
	}
	return _value;
}