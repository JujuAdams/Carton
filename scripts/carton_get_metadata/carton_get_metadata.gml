/// @param carton
/// @param index
function carton_get_metadata(argument0, argument1) {

	var _carton = argument0;
	var _index  = argument1;

	var _carton_buffer = _carton[eCarton.Buffer];
	var _carton_layout = _carton[eCarton.Layout];

	var _old_tell = buffer_tell(_carton_buffer);
	var _tell = _carton_layout[| _index];
	if (_tell == undefined) show_error("Carton:\nIndex out of range (" + string(_index) + ")\n ", true);

	buffer_seek(_carton_buffer, buffer_seek_start, _tell);
	var _metadata = buffer_read(_carton_buffer, buffer_string);
	buffer_seek(_carton_buffer, buffer_seek_start, _old_tell);

	return _metadata;


}
