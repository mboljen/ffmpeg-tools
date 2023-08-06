# ffmpeg-tools

A recent version of `ffmpeg` is required.


## Installation

Use the following command to install this software:

```bash
$ make
$ make install
```

The default `PREFIX` is set to `/usr/local`.  In order to successfully complete the installation, you need to have write permissions for the installation location.


## Tools


### ffmpeg-audioshift

Delay the audio or the video track of a video file.

#### Usage

```bash
$ ffmpeg-audioshift [-a _time_] [-v _time_] _infile_ [..]
```

#### Options

**-a** _time_
: Delay audio stream of file `infile` with respect to video by `time` seconds

**-v** _time_
: Delay video stream of file `infile` with respect to audio by `time` seconds


### ffmpeg-cattsfile

Concatenate multiple TS video files.

#### Usage

```bash
$ ffmpeg-cattsfile [-y] _infile_ [..]
```

#### Options

**-y**
: Overwrite existing files

**-h**
: Show this help message


### ffmpeg-convert

Convert video files batchwise.

#### Usage

```bash
$ ffmpeg-convert [-y] _infile_ [..]
```

#### Options

**-c** _string_
: Set cropdetect to remove black borders (default: `auto`)

**-o** _string_
: Set `ffmpeg` options

**-e** _ext_
: Set file extension of output file (default: `mp4`)

**-y**
: Overwrite existing files

**-h**
: Show this help message


### ffmpeg-cropdetect

Detect black margins of video files.

#### Usage

```bash
$ ffmpeg-cropdetect [-s _time_] [-t _time_] [-c _limit_:_round_:_skip_:_reset_] _infile_
```

#### Options

**-s** _skiptime_
: Set the number of seconds skipped from the beginning.  The default of _skiptime_ is 2 percent of the total duration of the video.  

**-t** _scantime_
: Set the number of seconds to be scanned.  The default of _scantime_ is 5 percent of the total duration of the video.  

**-c** _limit_:_round_:_skip_:_reset_
: set the `cropdetect` filter of **ffmpeg** (default: "24:16:2:0").


### ffmpeg-fadeinout

Add a fade-in and fade-out effect to a video file.

#### Usage

```bash
$ ffmpeg-fadeinout [-t _time_] [-m _mode_] [-s _stream_] [-n _suffix_] [-y] _infile_
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
: Show this help message.


### ffmpeg-gamma

Enhance gamma and saturation of a video file.

#### Usage

```bash
$ ffmpeg-gamma [-g _gamma_] [-s _saturation_] [-y] _infile_ [..]
```

#### Options

**-g** _gamma_
: Set gamma value (default: `1.0`)

**-s** _saturation_
: Set saturation level (default: "1.0")

**-y**
: Overwrite existing files

**-h**
: Show this help message


### ffmpeg-watermark

Add a watermark to a certain position in a media file.

#### Usage

```bash
$ ffmpeg-watermark [-a _anchor_] [-s _number_] [-m _pixel_] [-y] _watermark_ _infile_ [..]
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
: Show this help message


## See also

...

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
