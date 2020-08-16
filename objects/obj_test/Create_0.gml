//Create a couple buffers of data
buffer_0 = buffer_create(1024, buffer_fixed, 1);
repeat(1024) buffer_write(buffer_0, buffer_u8, 0xF0);

buffer_1 = buffer_create(16, buffer_fixed, 1);
repeat(16) buffer_write(buffer_1, buffer_u8, 0xF1);



//Create a carton to store buffers
carton = carton_create();

//Add our two buffers to the carton
carton_add(carton, "Buffer 0", buffer_0);
carton_add(carton, "Buffer 1", buffer_1);

//Save the carton to disk with compression turned on
carton_save(carton, "output.bin", true);

//Cartons use memory! Don't forget to destroy them
carton_destroy(carton);



//Ok, now let's load in the carton we just saved
carton_in = carton_load("output.bin", true);

//Unpack the buffers from the carton (there's also a metadata getter as well)
buffer_0_in = carton_get_buffer(carton_in, 0);
buffer_1_in = carton_get_buffer(carton_in, 1);

//carton_load() also allocates memory so make sure to take care of that as well
carton_destroy(carton_in);