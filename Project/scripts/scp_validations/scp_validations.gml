
/*
	Parse functions
		-To validate if the params are valid
		-You can put 'n' arguments at the params
*/

function	valid_array(){
	for(i = 0; i < argument_count; i++)
		if (!is_array(argument[i]))
			return (false);
	return (true);
}

function	valid_string(){
	for(i = 0; i < argument_count; i++)
		if (!is_string(argument[i]))
			return (false);
	return (true);
}

function	valid_bool(){
	for(i = 0; i < argument_count; i++)
		if (!is_bool(argument[i]))
			return (false);
	return (true);
}

function	valid_real(){
	for(i = 0; i < argument_count; i++)
		if (!is_real(argument[i]))
			return (false);
	return (true);
}

function	valid_struct(){
	for(i = 0; i < argument_count; i++)
		if (!is_struct(argument[i]))
			return (false);
	return (true);
}
