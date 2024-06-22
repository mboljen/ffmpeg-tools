# ffmpeg-audioshift

A recent version of **FFmpeg** is required.

This utlity is part of the bundle `ffmpeg-tools` documented [here](../../README.md).

## Description

Offsets the audio track of one or several video files.

## Usage

### Synopsis

```console
$ ffmpeg-audioshift [OPTION]... INFILE...
```

### Options

- **-o**, **--offset**=_time_

  Offset audio stream of file `infile` with respect to video by `time` seconds

- **-n**, **--name**=_value_

  Set default output filename suffix (default: `none`)

- **-d**, **--directory**=_value_

  Set an optional directory to where to write the files (default: `none`)

- **-y**, **--yes**

  Overwrite existing files

## See also

(...)

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)