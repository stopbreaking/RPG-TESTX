function type_hopping_letters(x, y, _text, _progress, _width, _hop_progress, _hop_delay, _hop_height) {
	var _draw_x = 0;
	var _draw_y = 0;
	
	for (var _i = 1; _i <= _progress; _i++;)
	{
		var _char = string_char_at(_text, _i);
		
		// Line breaks
		if (_char == "\n")
		{
			_draw_x = 0;
			_draw_y += string_height("A");
		} else if (_char == " ") // New word line break
		{ 
			_hop_progress -= (_hop_delay);
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
					_draw_x = 0;
					_draw_y += string_height("A");
					break;
				}
			}
		}
		else 
		{
			draw_text(x + _draw_x, y + _draw_y - _hop_height * sin(clamp(_hop_progress, 0, 1)*2*pi), _char);	
			_hop_progress -= (_hop_delay);
			_draw_x += string_width(_char);
		}
		//_hop_progress -= 0.9;
	}
}

