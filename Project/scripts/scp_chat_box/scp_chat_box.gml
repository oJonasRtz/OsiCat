/*
	Reset the counter when press the intect buton later
*/
global.char_cnt = 0;
global.char_time = 0.5;

/*
	Draw the box and the edge
*/
function	draw_box(box_colour, edge_colour, pos, x1, x2, y1, y2){
	var	edge;
	
	edge = 5;
	draw_set_color(edge_colour);
	draw_rectangle(x1 - edge, y1 - edge, x2 + edge, y2 + edge, false);
	
	draw_set_color(box_colour);
	draw_rectangle(x1, y1, x2, y2, false);
}

/*
	if it's given the name of the object we draw it
*/
function	draw_name(name, name_colour, strheight, x1, x2, y1){
	draw_set_color(name_colour);
	
	if (name != 0){
		draw_set_halign(fa_center);
		draw_text((x2 - x1) / 2, y1, name);
		y1 += strheight;
		draw_set_halign(fa_left);
	}
	return (y1);
}

/*
	draw the text of the dialog
*/
function	draw_dialog(text, page, font_colour, strheight, x1, x2, y1){
	var	strlen = string_length(text[page]);
	
	draw_set_color(font_colour);
	global.char_cnt += global.char_time;
	global.char_cnt = min(global.char_cnt, strlen);
	draw_text_ext(x1, y1, string_copy(text[page], 1, global.char_cnt), strheight, x2 - x1);
	return (strlen);
}

/*
	true to keep the box open
	false to close the box
*/
function	close_chat(interact){
	return (!interact);
}

function	init_sizes(pos){
	var	height, width, box_height, xf, xs, yf, ys;
	
	//Get screen size
	height = display_get_gui_height();
	width = display_get_gui_width();
	box_height = height * 0.3;
	
	//Set x sizes
	xf = width * 0.2;
	xs = width - xf;
	
	//Set y sizes
	if (pos == "up"){
		yf = 25;
		ys = yf + box_height;
	}
	else if (pos == "down"){
		ys = height - 25;
		yf = ys - box_height;
	}
	
	return {x1: xf,	x2: xs,	y1: yf,	y2: ys};
}

/*
	@param	text(string array char **) - text to be writen
	@param	page - the array slot to show
	@param	name - the name of the character
	@param	font	- font of the text
	@param	pos("up" || "down")	- the position of the textbox
	@param	interact - the interac buton(to change the text and close the window)
*/
function	create_chat_box(name, name_colour, text, page, font, font_colour, box_colour, edge_colour, pos, interact){
	var	strheight, strlen, size;

	//Validate params
	if (!valid_array(text) || !valid_real(page, interact) || !valid_string(pos, name))
		return (false);

	//Set sizes
	size = init_sizes(pos);	

	// Draw the box
	draw_box(box_colour, edge_colour, pos, size.x1, size.x2, size.y1, size.y2);
	
	// Draw the name
	draw_set_font(font);
		strheight = string_height(text);
		size.y1 = draw_name(name, name_colour, strheight, size.x1, size.x2, size.y1);
	
	//draw_text
	if (page < array_length(text)){	
		strlen = draw_dialog(text, page, font_colour, strheight, size.x1, size.x2, size.y1);
		
		if (global.char_cnt < strlen)
			return (true);
	}
	
	//Reset color to standard
	draw_set_color(c_white);

	//Close the text box
	return (close_chat(interact));
}
