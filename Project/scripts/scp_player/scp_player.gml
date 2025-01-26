
function player_text(first_call, name, talking_with){
	var	text = pointer_null;
	
	switch (room){
		case rm_debug:
			if (talking_with == "Maybe Jeff"){
				text = array_create(1);
				text[0] = "* Yes, I guess.";				
			}
			break ;
	}
	return (text);
}
