
function npc0_text(first_call, name){
	var	text = pointer_null;
	
	switch (room){
		case rm_debug:
			if (first_call){
				text = array_create(3);
				text[0] = "* Hi, my name is " + name + ".";
				text[1] = "* That's a great day here in the ruins...";
				text[2] = "*...Doesn't it?";
				return (text);
			}
			text = array_create(1);
			text[0] = "* You can go for now. I don't need you.";
			break ;
	}
	return (text);
}
