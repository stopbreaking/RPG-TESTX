var _xx = obj_camera.x;
var _yy = obj_camera.y;

layer_sequence_x(seq_id, _xx);
layer_sequence_y(seq_id, _yy);

if(layer_sequence_is_finished(seq_id))
{
	instance_destroy();
}