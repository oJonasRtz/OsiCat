
function npc1_text(first_call, name){
	var	text = pointer_null;
	
	switch (room){
		case rm_debug:
			if (first_call){
				text = array_create(3);
				text[0] = "* Hi, my name is " + name + ".";
				text[1] = "* Today is not a great day. Everyone has the same name as me in here...";
				text[2] = "* ... maybe I shoud move.";
				return (text);
			}
			text = array_create(1);
			text[0] = "* Please, don't come back, I'm sad now.";
			break ;
	}
	return (text);
}
