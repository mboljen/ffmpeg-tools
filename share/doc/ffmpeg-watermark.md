# ffmpeg-watermark

A recent version of **FFmpeg** is required.

This utlity is part of the bundle `ffmpeg-tools` documented [here](../../README.md).


## Description

Adds a watermark to a certain position in one or several media files.


## Synopsis

```console
$ ffmpeg-watermark [OPTION]... WATERMARK INFILE...
```


## Options

+ **-a**, **--anchor**=_value_

  Set anchor of watermark (default: `ne`)

+ **-s**, **--scale**=_width_:_height_

  Scale watermark according to larger dimension of media file (default: undefined)

+ **-m**, **--margin**=_value_

  Set margin around watermark in pixels (default: `0`)

+ **-o**, **--opacity**=_value_

  Set opacity of watermark (default: `1`)

+ **-r**, **--rotate**=_value_

  Set clockwise rotation angle of watermark in degrees (default: `0`)

+ **-n**, **--name**=_value_

  Set default output filename suffix (default: `none`)

+ **-d**, **--directory**=_value_

  Set an optional directory to where to write the files (default: `none`)

+ **-y**, **--yes**

  Overwrite existing files


## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.


## License

[MIT](https://choosealicense.com/licenses/mit/)
