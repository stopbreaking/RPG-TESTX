function type_middle(x, y, _text, _progress, _width) {
	var _draw_x = 0;
	var _draw_y = 0;
	
	var _line_progress = [0];
	var _lines = 0;
	for (var _i = 1; _i <= _progress; _i++;)
	{
		var _char = string_char_at(_text, _i);
		
		// Line breaks
		if (_char == "\n")
		{
			array_push(_line_progress, 0);
			_lines ++;
			_draw_x = 0;
			_draw_y += string_height("A");
		} else if (_char == " ") // New word line break
		{ 
			_line_progress[_lines] += string_width(_char);
			_draw_x += string_width(_char);
			
			var _word_width = 0;
			for (var _j = _i + 1; _j <= string_length(_text); _j++)
			{
				var _word_char = string_char_at(_text, _j);
				
				// stop checking at end of word
				if (_word_char == "\n" || _word_char == " ") break;
				
				_word_width += string_width(_word_char);
				// If the word extends past width, move to next line
				if(_draw_x + _word_width > _width)
				{
					array_push(_line_progress, 0);
					_lines ++;
					_draw_x = 0;
					_draw_y += string_height("A");
					break;
				}
			}
		}
		else 
		{
			_line_progress[_lines] += string_width(_char);
			_draw_x += string_width(_char);
		}
	}
	_lines = 0;	
	_draw_x = 0;
	_draw_y = 0;
	for (var _i = 1; _i <= _progress; _i++;)
	{
		var _char = string_char_at(_text, _i);
		
		// Line breaks
		if (_char == "\n")
		{
			_lines ++;
			_draw_x = 0;
			_draw_y += string_height("A");
		} else if (_char == " ") // New word line break
		{ 
			_draw_x += string_width(_char);
			
			var _word_width = 0;
			for (var _j = _i + 1; _j <= string_length(_text); _j++)
			{
				var _word_char = string_char_at(_text, _j);
				
				// stop checking at end of word
				if (_word_char == "\n" || _word_char == " ") break;
				
				_word_width += string_width(_word_char);
				// If the word extends past width, move to next line
				if(_draw_x + _word_width > _width)
				{
					_lines ++;
					_draw_x = 0;
					_draw_y += string_height("A");
					break;
				}
			}
		}
		else 
		{
			draw_text(x + _draw_x - _line_progress[_lines]*0.5, y + _draw_y - array_length(_line_progress)*string_height("A")/2, _char);
			_draw_x += string_width(_char);
		}
	}
}

