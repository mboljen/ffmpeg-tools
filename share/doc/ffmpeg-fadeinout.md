# ffmpeg-fadeinout

Add a fade-in and fade-out effect to one or several video files


## Synopsis

```console
$ ffmpeg-fadeinout [OPTION]... INFILE...
```


## Description

This script adds fade-in and fade-out effects to one or several video files.

This script is part of the bundle `ffmpeg-tools` documented [here](../../README.md).


## Options

+ `-t`, `--time` _value_

  Set fade duration in seconds (default: `5`)

+ `-m`, `--mode` _value_

  Set fade mode: fade-in only (`i`), fade-out only (`o`), both (default: `b`)

+ `-s`, `--stream` _value_

  Fade video stream only (`v`), audio stream only ( `a`), or both (default: `b`)

+ `-n`, `--name` _value_

  Set default output filename suffix (default: `none`)

+ `-d`, `--directory` _value_

  Set an optional directory to where to write the files (default: `none`)

+ `-y`, `--yes`

  Overwrite existing files


## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.


## License

[MIT](https://choosealicense.com/licenses/mit/)
