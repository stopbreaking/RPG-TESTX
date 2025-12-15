/// @description Check several 'quests' at once.
/// @param {Array} _conditions
/// @param _inst

function no_condition_first(_conditions, _inst){
	return !any_condition_first(_conditions, _inst);
}