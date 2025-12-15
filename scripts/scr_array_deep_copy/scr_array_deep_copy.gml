/// @desc Taken from google AI
function array_deep_copy(_array) {
    var _new_array = array_create(0); // Create an empty array

    for (var i = 0; i < array_length(_array); i++) {
        var _element = _array[i];
        if (is_array(_element)) {
            _new_array[i] = array_deep_copy(_element); // Recursively deep copy nested arrays
        } else if (is_struct(_element)) {
            _new_array[i] = variable_clone(_element); // Copy structs
        } else {
            _new_array[i] = _element; // Copy primitive values directly
        }
    }
    return _new_array;
}