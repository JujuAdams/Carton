<h1 align="center">Carton 1.0.1</h1>

<p align="center">Buffer packer/unpacker, written in native GML, for GameMaker Studio 2</p>

<p align="center"><b>@jujuadams</b></p>

<p align="center">Chat about Carton on the <a href="https://discord.gg/8krYCqr">Discord server</a></p>

&nbsp;

### `__carton_config()`

*Returns:* N/A (`undefined`)

|Name|Datatype|Purpose|
|----|--------|-------|
|None|        |       |

This script holds macros that control the behaviour of Carton. `__carton_config()` never needs to be directly called in code, but the script and the macros it contains must be present in a project for Input to work.

**You should edit this script to customise Carton for your own purposes.**

|Macro                        |Typical Value|Purpose                                      |
|-----------------------------|-------------|---------------------------------------------|
|`CARTON_BUFFER_START_SIZE`   |`1024`       |Starting size of the buffer used for a carton|

&nbsp;

&nbsp;

### `carton_create()`

*Returns:* An empty carton - a container for multiple buffers (array datatype)

|Name|Datatype|Purpose|
|----|--------|-------|
|None|        |       |

Cartons act like other native GameMaker data structures and must be [destroyed](README.md#carton_destroy) after creation to free memory.

&nbsp;

&nbsp;

### `carton_destroy()`

*Returns:* N/A (`undefined`)

|Name    |Datatype                         |Purpose                                                                      |
|--------|---------------------------------|-----------------------------------------------------------------------------|
|`carton`|[carton](README.md#carton_create)|[Carton](README.md#carton_create) to destroy, freeing memory allocated for it|

&nbsp;

&nbsp;

### `carton_count()`

*Returns:* Integer, the number of buffers packed into the carton

|Name    |Datatype                         |Purpose                                    |
|--------|---------------------------------|-------------------------------------------|
|`carton`|[carton](README.md#carton_create)|[carton](README.md#carton_create) to target|

&nbsp;

&nbsp;

### `carton_add()`

*Returns:* N/A (`undefined`)

|Name      |Datatype                         |Purpose                                            |
|----------|---------------------------------|---------------------------------------------------|
|`carton`  |[carton](README.md#carton_create)|[carton](README.md#carton_create) to target        |
|`metadata`|string                           |Metadata string to be included alongside the buffer|
|`buffer`  |[buffer](https://docs2.yoyogames.com/source/_build/1_overview/3_additional_information/using_buffers.html)|Buffer to add to the carton|
|`[offset]`|integer                          |Offset of buffer data to add, in bytes. If not specified, `0` is used (the start of the buffer)|
|`[size]`  |integer                          |Size of the data to add, in bytes. If not specified, the size of the buffer is used|

&nbsp;

&nbsp;

### `carton_get_metadata()`

*Returns:* String, the metadata for the given carton buffer index

|Name    |Datatype                         |Purpose                                    |
|--------|---------------------------------|-------------------------------------------|
|`carton`|[carton](README.md#carton_create)|[carton](README.md#carton_create) to target|
|`index` |integer                          |Carton buffer index to target              |

&nbsp;

&nbsp;

### `carton_get_buffer()`

*Returns:* [Buffer](https://docs2.yoyogames.com/source/_build/1_overview/3_additional_information/using_buffers.html), a copy of the targetted carton block

|Name    |Datatype                         |Purpose                                    |
|--------|---------------------------------|-------------------------------------------|
|`carton`|[carton](README.md#carton_create)|[carton](README.md#carton_create) to target|
|`index` |integer                          |Carton block index to target               |

&nbsp;

&nbsp;

### `carton_save()`

*Returns:* N/A (`undefined`)

|Name      |Datatype                         |Purpose                                     |
|----------|---------------------------------|--------------------------------------------|
|`carton`  |[carton](README.md#carton_create)|[carton](README.md#carton_create) to target |
|`filename`|string                           |Filename to save the carton to              |
|`compress`|boolean                          |Whether to compress the carton before saving|

&nbsp;

&nbsp;

### `carton_load()`

*Returns:* A carton - a container for multiple buffers (array datatype) - that holds data loaded from the file specified

|Name        |Datatype                         |Purpose                                     |
|------------|---------------------------------|--------------------------------------------|
|`carton`    |[carton](README.md#carton_create)|[carton](README.md#carton_create) to target |
|`filename`  |string                           |Filename to save the carton to              |
|`decompress`|boolean                          |Whether the file requires decompression     |

