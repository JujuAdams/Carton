/// @param carton

function carton_count(_carton)
{
	return ds_list_size(_carton[eCarton.Layout]);
}