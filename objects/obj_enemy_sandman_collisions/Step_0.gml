if(global.game_paused) return;

//Reset speed! don't miss this
speed = 0;
path_end();

script_execute(state);

depth = -bbox_bottom;