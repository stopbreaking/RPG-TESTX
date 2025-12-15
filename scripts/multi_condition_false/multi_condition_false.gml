/// @description Check several 'quests' at once. Return true if they aren't complete.
/// @param {Array} _conditions

function multi_condition_false(_conditions){
	return !multi_condition(_conditions);
}