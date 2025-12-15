/// @description Load Game
//game_restart();

if(file_exists("game.save"))
	{
		restart = true;
		global.room_change.camera_tp = true;
		global.room_change.player_tp = false;
		
		var _buffer = buffer_load("game.save");
		
		var _json = buffer_read(_buffer, buffer_string);
		
		buffer_delete(_buffer);
		
		global.game_data = json_parse(_json);
		
		global.loading = true;	
		
		room_goto(global.game_data.last_room);
	}