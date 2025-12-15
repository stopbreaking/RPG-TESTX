function mini_dialog(n){
	switch(n)
	{
		case 0: 
		return [
			["The door to Fruit World ripened and rotted away.."],
			["So I'm stuck here."],
		]
		case 1: 
		return [
			["Still better than last vacation, when I was \n shot into the sun."],
		]
		case 2: 
		return [
			["If I can survive that, I can survive anything."],
		]
		case 3: 
		return [
			["Fella, could you move those pots onto the \n grey buttons for me?"],
			["I don't have hands.."],
		]
		case 4: 
		return [
			["Thanks pal."],
			["Now I can get to the secret door behind the waterfall."]
		]
		default: 
		show_debug_message("WARNING: Unrecognized dialog id!");
		return [["NA"]];
		
	}
}