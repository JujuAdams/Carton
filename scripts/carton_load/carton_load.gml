/// @param filename
/// @param decompress

var _filename   = argument0;
var _decompress = argument1;

var _buffer = buffer_load(_filename);

if (_decompress)
{
    var _old_buffer = _buffer;
    _buffer = buffer_decompress(_old_buffer);
    buffer_delete(_old_buffer);
}

var _buffer_size = buffer_get_size(_buffer);

var _header_carton = buffer_read(_buffer, buffer_string);
if (_header_carton != "Carton @jujuadams") show_error("Carton:\nInvalid file format\n ", true);

var _layout = ds_list_create();
var _carton = array_create(eCarton.__Size, undefined);
_carton[eCarton.Buffer] = _buffer;
_carton[eCarton.Layout] = _layout;

var _header_version = buffer_read(_buffer, buffer_string);
switch(_header_version)
{
    case "1.0.0":
    case "1.0.1":
        while(buffer_tell(_buffer) < _buffer_size)
        {
            ds_list_add(_layout, buffer_tell(_buffer));
            var _metadata = buffer_read(_buffer, buffer_string); //Unusued in this script
            var _size = buffer_read(_buffer, buffer_u64);
            buffer_seek(_buffer, buffer_seek_relative, _size);
        }
    break;
    
    default:
        show_error("Carton:\nUnsupported version (" + string(_header_version) + "\n ", true);
    break;
}

return _carton;