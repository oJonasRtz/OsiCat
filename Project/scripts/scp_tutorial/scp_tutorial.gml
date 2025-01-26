
function tutorial_text(first_call, name){
	var	text = pointer_null;
	
	switch (room){
		case rm_debug:
			text = array_create(2);
			text[0] = "* Welcome!";
			text[1] = "* Walk: WASD\n* Interact: SPACE BAR";
			return (text);
			break ;
	}
	return (text);
}
