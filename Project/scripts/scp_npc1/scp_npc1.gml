
function npc1_text(first_call, name){
	var	text = pointer_null;
	
	switch (room){
		case rm_debug:
			if (first_call){
				text = array_create(4);
				text[0] = "* Hi, my name is " + name + ".";
				text[1] = "* Today is not a great day... ";
				text[2] = "* ...everyone has the same name as mine in here..";
				text[3] = "* ...maybe I shoud move.";
				return (text);
			}
			text = array_create(2);
			text[0] = "* Please, don't come back...";
			text[1] = "* ...I'm sad now.";
			break ;
	}
	return (text);
}
