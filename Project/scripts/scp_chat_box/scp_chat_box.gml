/*
	@param	text(string array char **) - text to be writen
	@param	font	- font of the text
*/
function	create_chat_box(text, page, font, font_colour, box_colour, edge_colour){
	var	height, width, strheight, edge, x1, x2, y1, y2;
	
	if (!is_array(text) || !is_real(page))
		return (false);
	
	edge = 5;
	height = display_get_gui_height();
	width = display_get_gui_width();
	x1 = width * 0.2;
	y1 = 25;
	x2 = width - (width * 0.2);
	y2 = height - (height * 0.6);
	
	// Desenha a borda branca
    draw_set_color(edge_colour);
    draw_rectangle(x1 - edge, y1 - edge, x2 + edge, y2 + edge, false);
    
    // Desenha o retângulo de fundo com a cor desejada
	draw_set_color(box_colour);
		draw_rectangle(x1, y1, x2, y2, false);
	
	// Desenha o texto
	draw_set_color(font_colour);
		draw_set_font(font);
		strheight = string_height(text);
		if (name != 0){
			draw_text(x1, y1, name);
			y1 += strheight;
		}
		if (page < array_length(text)){
			draw_text_ext(x1, y1, text[page], strheight, x2 - x1);
			return (true);
		}
	draw_set_color(c_white);
	return (false);
}
