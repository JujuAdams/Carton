/// @param carton
/// @param filename
/// @param compress
function carton_save(argument0, argument1, argument2) {

	var _carton   = argument0;
	var _filename = argument1;
	var _compress = argument2;

	var _buffer = _carton[eCarton.Buffer];

	if (_compress)
	{
	    var _compressed_buffer = buffer_compress(_buffer, 0, buffer_tell(_buffer));
	    buffer_save(_compressed_buffer, _filename);
	    buffer_delete(_compressed_buffer);
	}
	else
	{
	    buffer_save(_buffer, _filename);
	}


}
