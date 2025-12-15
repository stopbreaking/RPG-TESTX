function fulfill_quest(_name){
	var _quest = ds_map_find_value(global.quests, _name);
	_quest ??= start_quest(_name);
	_quest.fulfilled = true;
}