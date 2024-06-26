# ffmpeg-cropdetect

Detect black margins of one or several video files


## Synopsis

```console
$ ffmpeg-cropdetect [OPTION]... INFILE...
```


## Description

This script detects black margins of one or several video files.


## Options

+ `-s`, `--skip` _value_

  Set the number of seconds skipped from the beginning.  The default of _value_ is 2 percent of the total duration of the video.

+ `-t`, `--time` _value_

  Set the number of seconds to be scanned.  The default of _value_ is 5 percent of the total duration of the video.

+ `-c`, `--cropdetect` _limit_:_round_:_skip_:_reset_

  Set the `cropdetect` filter of **FFmpeg** (default: `24:16:2:0`).


## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.


## License

[MIT](https://choosealicense.com/licenses/mit/)
