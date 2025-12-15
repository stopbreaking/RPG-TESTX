/// @function new_cutscene (_arguments)
/// @param {Array} _arguments1
// @description Queue up a series of action objects to execute scripts one after another -> [script, args]. If wrapped like this [[script, args], 1], the queue will wait for a special exit condition.
function new_cutscene(_arguments1, _insert = false){
	var _arguments = array_deep_copy(_arguments1); //AAAAAAAAH I HAVE TO COPY THE ARRAY TO KEEP IT FROM POPPING
	if(_insert) _arguments = array_reverse(_arguments);
	for (var _i = 0; _i < array_length(_arguments); _i++)
		{
			var _special_exit_conditions = (_arguments[_i][0] == hold) || _arguments[_i][0] == 0;
			var _args = [];
			
			if(_special_exit_conditions) {
				array_shift(_arguments[_i]);
			}
			if(array_length(_arguments[_i]) > 1) _args =  _arguments[_i][1];
			new_cutscene_action(_arguments[_i][0], _args, _special_exit_conditions, _insert);
			
			if(array_length(_arguments[_i]) > 2) show_debug_message("ERROR: unrecognized array size in cutscene!")
		}
}
