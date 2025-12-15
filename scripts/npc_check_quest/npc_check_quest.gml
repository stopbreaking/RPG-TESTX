function npc_check_quest(_inst, _name, _check_temp = false){
	with (_inst) {
		if(array_contains(quest_confirmations, _name)) 
		{
			show_debug_message("ARRAY CONTAINS");
			return false;
		} else 
		{
			if(check_quest(_name)) 
			{
				show_debug_message("QUEST CHECKED CONFIRMED");
				temp_conditions = add_and_remake_array(temp_conditions, _name);
				return true;
			} else 
			{
				show_debug_message("WTF FALSE");
				return false;
			}
		}
	}
}