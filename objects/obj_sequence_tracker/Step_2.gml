layer_sequence_x(sequence_id, obj_camera.x);
layer_sequence_y(sequence_id, obj_camera.y);

if(layer_sequence_is_finished(sequence_id)) instance_destroy();