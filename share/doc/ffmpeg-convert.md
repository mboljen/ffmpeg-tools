# ffmpeg-convert

Convert one or several video files


## Synopsis

```console
$ ffmpeg-convert [OPTION]... INFILE...
```


## Description

This script converts one or several video files.


## Options

+ `-c`, `--cropdetect` _value_

  Set cropdetect to remove black borders (default: `auto`)

+ `-o`, `--option` _value_

  Set **FFmpeg** option and value (can be used multiple times)

+ `-e`, `--extension` _value_

  Set file extension of output file (default: `mp4`)

+ `-n`, `--name` _value_

  Set default output filename suffix (default: `none`)

+ `-d`, `--directory` _value_

  Set an optional directory to where to write the files (default: `none`)

+ `-y`, `--yes`

  Overwrite existing files


## Default settings

The wrapper parses local and user-defined configuration files if existing.  Edit files `/etc/ffmpeg-convert.conf` or `$HOME/.ffmpeg-convert` where appropriate.  The default settings are defined as follows:

```ini
# Setting for cropdetect (auto|disabled)
CROP=disabled

# Default FFmpeg settings
OPTS=-map 0:v -map 0:a? -c:v h264 -crf 23 -c:a copy

# Default file extension for output files
EXT=mp4

# Default output filename suffix
NAME=

# Default output directory
DIR=

# Permission to overwrite existing files
YES=0
```


## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.


## License

[MIT](https://choosealicense.com/licenses/mit/)
