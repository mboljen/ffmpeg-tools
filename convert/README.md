# ffmpeg-convert

Convert one or several video files.

A recent version of `ffmpeg` is required.

This utlity is part of the bundle `ffmpeg-tools` documented [here](../README.md).

## Description

(...)

## Usage

### Synopsis

```console
$ ffmpeg-convert [OPTION]... INFILE...
```

### Options

- **-c**, **--cropdetect**=_value_

  Set cropdetect to remove black borders (default: `auto`)

- **-o**, **--option**=_value_

  Set `ffmpeg` option and value (can be used multiple times)

- **-e**, **--extension**=_value_

  Set file extension of output file (default: `mp4`)

- **-n**, **--name**=_value_

  Set default output filename suffix (default: `none`)

- **-d**, **--directory**=_value_

  Set an optional directory to where to write the files (default: `none`)

- **-y**, **--yes**

  Overwrite existing files

### Default settings

The wrapper parses local and user-defined configuration files if existing.  Edit files `/etc/ffmpeg-convert.conf` or `$HOME/.ffmpeg-convert` where appropriate.  The default settings are defined as follows:

```ini
# Setting for cropdetect (auto|disabled)
CROP=disabled

# Default ffmpeg settings
OPTS=-map 0:v -map 0:a? -c:v h264 -crf 23 -c:a copy

# Default file extension for output files
EXT=mp4

# Default output filename suffix
NAME=convert

# Permission to overwrite existing files
YES=0
```

## See also

(...)

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
