#macro CARTON_BUFFER_START_SIZE  1024  //Starting size of the buffer used for a carton

#region Internal Macros

#macro __CARTON_VERSION "1.0.1"
#macro __CARTON_DATE    "2020-08-16"

show_debug_message("Carton: Welcome to Carton by @jujuadams! This is version " + __CARTON_VERSION + ", " + __CARTON_DATE);

enum eCarton
{
    Buffer,
    Layout,
    __Size
}

#endregion