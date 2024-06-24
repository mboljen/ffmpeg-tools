# ffmpeg-gamma

Enhance gamma and saturation of one or several video files


## Synopsis

```console
$ ffmpeg-gamma [OPTION]... INFILE...
```


## Description

This script enhances gamma and saturation of one or several video files.

This script is part of the bundle `ffmpeg-tools` documented [here](../../README.md).


## Options

+ `-g`, `--gamma` _value_

  Set gamma value (default: `1.0`)

+ `-s`, `--saturation` _value_

  Set saturation level (default: `1.0`)

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
