# ffmpeg-watermark

Add a watermark to a certain position in one or several media files.

A recent version of `ffmpeg` is required.

This utlity is part of the bundle `ffmpeg-tools` documented [here](../README.md).

## Installation

Use the following command to install this software:

```bash
$ make
$ make install
```

The default `PREFIX` is set to `/usr/local`.  In order to successfully complete the installation, you need to have write permissions for the installation location.

## Usage

### Synopsis

```console
$ ffmpeg-watermark [OPTION]... WATERMARK INFILE...
```

#### Options

**-a**, **--anchor**=_value_
: Set anchor of watermark (default: `ne`)

**-s**, **--scale**=_width_:_height_
: Scale watermark according to larger dimension of media file (default: undefined)

**-m**, **--margin**=_value_
: Set margin around watermark in pixels (default: `0`)

**-o**, **--opacity**=_value_
: Set opacity of watermark (default: `1`)

**-r**, **--rotate**=_value_
: Set clockwise rotation angle of watermark in degrees (default: `0`)

**-n**, **--name**=_value_
: Set default output filename suffix (default: `watermark`)

**-y**, **--yes**
: Overwrite existing files

## See also

(...)

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
