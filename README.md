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

```bash
$ ffmpeg-audioshift [-a <time>] [-v <time>] [-y] <infile> [..]
```

#### Options

**-a** _time_
: Delay audio stream of file `infile` with respect to video by `time` seconds

**-v** _time_
: Delay video stream of file `infile` with respect to audio by `time` seconds

**-y**
: Overwrite existing files

**-h**
: Show a short help message


### ffmpeg-cattsfile

Concatenate multiple TS video files.

#### Synopsis

```bash
$ ffmpeg-cattsfile <infile> [..] <outfile>
```

#### Options

**-y**
: Overwrite existing files

**-h**
: Show a short help message


### ffmpeg-convert

Convert one or several video files.

#### Synopsis

```bash
$ ffmpeg-convert [-c <string>] [-o <option> [value]] [-e <ext>] [-y] <infile> [..]
```

#### Options

**-c** _string_
: Set cropdetect to remove black borders (default: `auto`)

**-o** _option_ [_value_]
: Set `ffmpeg` option and value (can be used multiple times)

**-e** _ext_
: Set file extension of output file (default: `mp4`)

**-y**
: Overwrite existing files

**-h**
: Show a short help message

#### Default settings

The wrapper parses local and user-defined configuration files if existing.  Edit files `/etc/ffmpeg-convert.conf` or `$HOME/.ffmpeg-convert` where appropriate.  The default settings are defined as follows:

```ini
# Setting for cropdetect (auto|disabled)
CROP=disabled

# Default ffmpeg settings
OPTS=-map 0:v -map 0:a? -c:v h264 -crf 23 -c:a copy

# Default file extension for output files
EXT=mp4

# Permission to overwrite existing files
YES=0
```


### ffmpeg-cropdetect

Detect black margins of one or several video files.

#### Synopsis

```bash
$ ffmpeg-cropdetect [-s <time>] [-t <time>] [-c <limit>:<round>:<skip>:<reset>] <infile> [..]
```

#### Options

**-s** _skiptime_
: Set the number of seconds skipped from the beginning.  The default of _skiptime_ is 2 percent of the total duration of the video.  

**-t** _scantime_
: Set the number of seconds to be scanned.  The default of _scantime_ is 5 percent of the total duration of the video.  

**-c** _limit_:_round_:_skip_:_reset_
: set the `cropdetect` filter of **ffmpeg** (default: "24:16:2:0").

**-h**
: Show a short help message


### ffmpeg-fadeinout

Add a fade-in and fade-out effect to one or several video files.

#### Synopsis

```bash
$ ffmpeg-fadeinout [-t <time>] [-m <mode>] [-s <stream>] [-n <suffix>] [-y] <infile> [..]
```

#### Options

**-t** _time_
: Set fade duration in seconds (default: `5`)

**-m** _mode_
: Set fade mode: fade-in only (`i`), fade-out only (`o`), both (default: `b`).

**-s** _stream_
: Fade video stream only (`v`), audio stream only ( `a`), or both (default: `b`)

**-n** _suffix_
: Set file basename suffix (default: `-fadeinout`)

**-y**
: Overwrite existing files

**-h**
: Show a short help message


### ffmpeg-gamma

Enhance gamma and saturation of one or several video files.

#### Synopsis

```bash
$ ffmpeg-gamma [-g <gamma>] [-s <saturation>] [-y] <infile> [..]
```

#### Options

**-g** _gamma_
: Set gamma value (default: `1.0`)

**-s** _saturation_
: Set saturation level (default: "1.0")

**-y**
: Overwrite existing files

**-h**
: Show a short help message


### ffmpeg-watermark

Add a watermark to a certain position in one or several media files.

#### Synopsis

```bash
$ ffmpeg-watermark [-a <anchor>] [-s <number>] [-m <pixel>] [-y] <watermark> <infile> [..]
```

#### Options

**-a** _anchor_
: Set anchor of watermark (default: `ne`)

**-s** _number_
: Scale watermark according to larger dimension of media file (default: `0`)

**-m** _pixel_
: Set margin around watermark (default: `0`)

**-y**
: Overwrite existing files

**-h**
: Show a short help message



## See also

...



## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.



## License

[MIT](https://choosealicense.com/licenses/mit/)
