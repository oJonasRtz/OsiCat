//global.char_cnt = 0;
//global.char_time = 0.5;

/*
	@param	text(string array char **) - text to be writen
	@param	font	- font of the text
	@param	pos("up" || "down")	- the position of the textbox
*/
function	create_chat_box(name, name_colour, text, page, font, font_colour, box_colour, edge_colour, pos){
	var	height, width, strheight, edge, x1, x2, y1, y2, box_height;

	edge = 5;
	height = display_get_gui_height();
	width = display_get_gui_width();
	x1 = width * 0.2;
	x2 = width - (width * 0.2);
	box_height = height - (height * 0.7);
	if (pos == "up"){
		y1 = 25;
		y2 = y1 + box_height;
	}
	else if (pos == "down"){
		y2 = height - 25;
		y1 = y2 - box_height;
	}
	
	// Desenha a borda branca
    draw_set_color(edge_colour);
    draw_rectangle(x1 - edge, y1 - edge, x2 + edge, y2 + edge, false);
    
    // Desenha o retângulo de fundo com a cor desejada
	draw_set_color(box_colour);
		draw_rectangle(x1, y1, x2, y2, false);
	
	// Desenha o texto
	draw_set_color(name_colour);
		draw_set_font(font);
		strheight = string_height(text);
		if (name != 0){
			draw_text(x1, y1, name);
			y1 += strheight;
		}
		draw_set_color(font_colour);
		if (page < array_length(text)){
			//global.char_cnt += global.char_time;
			//global.char_cnt = min(global.char_cnt, string_length(text[page]));

			draw_text_ext(x1, y1,text[page], strheight, x2 - x1);
			//if (global.char_cnt < string_length(text[page]))
				return (true);
		}
	draw_set_color(c_white);
	//global.char_cnt = 0;
	return (false);
}
