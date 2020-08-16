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

|Name                         |Typical Value|Purpose                                      |
|-----------------------------|-------------|---------------------------------------------|
|`CARTON_BUFFER_START_SIZE`   |`1024`       |Starting size of the buffer used for a carton|

&nbsp;

&nbsp;

### `carton_create()`

*Returns:* A carton - a container for multiple buffers (array datatype)

|Name|Datatype|Purpose|
|----|--------|-------|
|None|        |       |

&nbsp;

&nbsp;

### `carton_destroy()`

*Returns:* N/A (`undefined`)

|Name    |Datatype  |Purpose                                               |
|--------|----------|------------------------------------------------------|
|`carton`|[Carton](README.md#carton_create)|Destroys a [carton](https://github.com/JujuAdams/Carton/blob/master/README.md#carton_create), freeing memory allocated for it|

&nbsp;

&nbsp;

### `carton_count()`

&nbsp;

&nbsp;

### `carton_add()`

&nbsp;

&nbsp;

### `carton_get_metadata()`

&nbsp;

&nbsp;

### `carton_get_buffer()`

&nbsp;

&nbsp;

### `carton_save()`

&nbsp;

&nbsp;

### `carton_load()`

