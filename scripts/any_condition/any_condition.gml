/// @description Check several 'quests' at once.
/// @param {Array} _conditions

function any_condition(_conditions){
	var _value = false;
	if(array_length(_conditions) == 0) return false;
	for(var _i = 0; _i < array_length(_conditions); _i++;) {
		if(check_quest(_conditions[_i])) _value = true;
	}
	return _value;
}