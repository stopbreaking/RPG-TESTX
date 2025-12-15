function check_quest(_name) 
{
	var _quest = global.quests[? _name];
	_quest ??= start_quest(_name);
	return global.quests[? _name].fulfilled;
}