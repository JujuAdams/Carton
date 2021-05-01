/// @param carton
function carton_destroy(argument0) {

	var _carton = argument0;

	buffer_delete(_carton[eCarton.Buffer]);
	ds_list_destroy(_carton[eCarton.Layout]);

	//Invalidate this carton so that we can't accidentally re-reference it
	_carton[@ eCarton.Buffer] = undefined;
	_carton[@ eCarton.Layout] = undefined;


}
