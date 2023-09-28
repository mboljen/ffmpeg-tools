# ffmpeg-tools

This collections provides the following wrappers for `ffmpeg`.

+ [ffmpeg-audioshift](#ffmpeg-audioshift)
+ [ffmpeg-cattsfile](#ffmpeg-cattsfile)
+ [ffmpeg-convert](#ffmpeg-convert)
+ [ffmpeg-cropdetect](#ffmpeg-cropdetect)
+ [ffmpeg-fadeinout](#ffmpeg-fadeinout)
+ [ffmpeg-gamma](#ffmpeg-gamma)
+ [ffmpeg-watermark](#ffmpeg-watermark)

A recent version of `ffmpeg` is required.



## Installation

Use the following command to install this software:

```bash
$ make
$ make install
```

The default `PREFIX` is set to `/usr/local`.  In order to successfully complete the installation, you need to have write permissions for the installation location.



## Usage


### ffmpeg-audioshift

Delay the audio or the video track of one or several video files.

#### Synopsis

```console
$ ffmpeg-audioshift [OPTION]... INFILE...
```

#### Options

**-a**, **--audio**=_time_
: Delay audio stream of file `infile` with respect to video by `time` seconds

**-v**, **--video**=_time_
: Delay video stream of file `infile` with respect to audio by `time` seconds

**-y**, **--yes**
: Overwrite existing files


### ffmpeg-cattsfile

Concatenate multiple TS video files.

#### Synopsis

```console
$ ffmpeg-cattsfile [-y] INFILE... OUTFILE
```

#### Options

**-y**, **--yes**
: Overwrite existing files


### ffmpeg-convert

Convert one or several video files.

#### Synopsis

```console
$ ffmpeg-convert [OPTION]... INFILE...
```

#### Options

**-c**, **--cropdetect**=_value_
: Set cropdetect to remove black borders (default: `auto`)

**-o**, **--option**=_value_
: Set `ffmpeg` option and value (can be used multiple times)

**-e**, **--extension**=_value_
: Set file extension of output file (default: `mp4`)

**-n**, **--name**=_value_

**-y**, **--yes**
: Overwrite existing files

#### Default settings

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


### ffmpeg-cropdetect

Detect black margins of one or several video files.

#### Synopsis

```console
$ ffmpeg-cropdetect [OPTION]... INFILE...
```

#### Options

**-s**, **--skip**=_value_
: Set the number of seconds skipped from the beginning.  The default of _value_ is 2 percent of the total duration of the video.  

**-t**, **--time**=_value_
: Set the number of seconds to be scanned.  The default of _value_ is 5 percent of the total duration of the video.

**-c**, **--cropdetect**=_limit_:_round_:_skip_:_reset_
: set the `cropdetect` filter of **ffmpeg** (default: "24:16:2:0").


### ffmpeg-fadeinout

Add a fade-in and fade-out effect to one or several video files.

#### Synopsis

```console
$ ffmpeg-fadeinout [OPTION]... INFILE...
```

#### Options

**-t**, **--time**=_value_
: Set fade duration in seconds (default: `5`)

**-m**, **--mode**=_value_
: Set fade mode: fade-in only (`i`), fade-out only (`o`), both (default: `b`)

**-s**, **--stream**=_value_
: Fade video stream only (`v`), audio stream only ( `a`), or both (default: `b`)

**-n**, **--name**=_value_
: Set default output filename suffix (default: `fadeinout`)

**-y**, **--yes**
: Overwrite existing files


### ffmpeg-gamma

Enhance gamma and saturation of one or several video files.

#### Synopsis

```console
$ ffmpeg-gamma [OPTION]... INFILE...
```

#### Options

**-g**, **--gamma**=_value_
: Set gamma value (default: `1.0`)

**-s**, **--saturation**=_value_
: Set saturation level (default: `1.0`)

**-n**, **--name**=_value_
: Set default output filename suffix (default: `gamma`)

**-y**, **--yes**
: Overwrite existing files


### ffmpeg-watermark

Add a watermark to a certain position in one or several media files.

#### Synopsis

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

...



## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.



## License

[MIT](https://choosealicense.com/licenses/mit/)
