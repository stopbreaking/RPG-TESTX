function start_quest(_name){
	var _quest = {
		name: _name,
		fulfilled: false
	}
	ds_map_add(global.quests, _name, _quest);
	return _quest;
}