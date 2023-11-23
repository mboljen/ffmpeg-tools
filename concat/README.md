# ffmpeg-concat

Concatenate multiple video files.

A recent version of `ffmpeg` is required.

This utlity is part of the bundle `ffmpeg-tools` documented [here](../README.md).

## Installation

Use the following command to install this software:

```bash
$ make
$ make install
```

The default `PREFIX` is set to `/usr/local`.  In order to successfully complete the installation, you need to have write permissions for the installation location.

## Usage

### Synopsis

```console
$ ffmpeg-concat [-y] [-m METHOD] INFILE... OUTFILE
```

### Options

**-m**, **--method**=_value_

: Select concatenation method: by filter (`0`), by demuxer (`1`), by protocol (`2`)

**-y**, **--yes**
: Overwrite existing files

## See also

(...)

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
