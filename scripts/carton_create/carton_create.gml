function carton_create() {
	var _buffer = buffer_create(CARTON_BUFFER_START_SIZE, buffer_grow, 1);
	buffer_write(_buffer, buffer_string, "Carton @jujuadams");
	buffer_write(_buffer, buffer_string, __CARTON_VERSION);

	var _carton = array_create(eCarton.__Size);
	_carton[@ eCarton.Buffer] = _buffer;
	_carton[@ eCarton.Layout] = ds_list_create();
	return _carton;


}
